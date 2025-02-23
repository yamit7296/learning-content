import express from 'express';
import multer from 'multer';
import fs from 'fs';
import path from 'path';

const app = express();

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'uploads/')
    },
    filename: (req, file, cb) => {
        cb(null, `${Date.now()}-${file.originalname}`); 
    }
})

const upload = multer({storage});

app.post('/upload', upload.single('file'), (req, res) => {
    const file = req.file;
    if(!file) {
        throw "file not exist!!";
    }
    
    const writeStream = fs.createWriteStream(`${file.destination}${file?.filename}`);
    const readStream = fs.createReadStream(file?.path);

    readStream.pipe(writeStream);

    readStream.on('data', (chunk) => {
        console.log(`Currently reading file..`);
    })

    readStream.on('end', () => {
        res.send('File Uploaded Successfully');
    })

    readStream.on('error', (error) => {
        res.status(500).send(`Unable to process ${error.message}`);
    });

})



const PORT = 3002;

app.listen(PORT, () => {
    console.log(`Express server is running on PORT ${PORT}`);
})

