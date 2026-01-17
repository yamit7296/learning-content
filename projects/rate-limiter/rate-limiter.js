import Redis from 'ioredis';

const redis = new Redis();

const requestLimit = 10;
const expiryTime = 60;
const map = new Map();

const rateLimit = (req, res, next) => {
    // Using Map for RateLimit
    const ip = req.ip;
    if(map.has(ip)) {
        const ipDetail = map.get(ip);
        if(ipDetail.count >= requestLimit) {
            return res.status(429).json({ message: 'Too many requests, please try again later' });
        }
        
        if(ipDetail.expiryTime < Date.now()){
            map.delete(ip);
            map.set(ip, {
                count: 1,
                expiryTime: Date.now() + (expiryTime * 1000)
            })
            next();
        }
        
        map.set(ip, {
            count: ipDetail.count + 1,
            expiryTime: ipDetail.expiryTime
        })
        console.log(ipDetail);
        next();
    }
    else {
        map.set(ip, {
            count: 1,
            expiryTime: Date.now() + (expiryTime * 1000)
        })
        next();
    }

    // Using Redis for rate limiting
    // redis.incr(req.ip, (err, count) => {
    //     if (err) {
    //         console.error(err);
    //         return res.status(500).json({ message: 'Error processing request' });
    //     }

    //     if (count > requestLimit) {
    //         return res.status(429).json({ message: 'Too many requests, please try again later' });
    //     }

    //     if(count === 1) {
    //         redis.expire(req.ip, expiryTime);
    //     }
    //     next();
    // },);
}

export default rateLimit;
