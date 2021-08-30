import express, { Request, Response } from 'express';
import dotenv from 'dotenv';

dotenv.config();
const { PORT } = process.env;

const app = express();

app.use('/test', (_: Request, res: Response) => {
  res.send({ success: PORT });
});

app.listen(PORT, () => {
  console.log('App listening on : ', PORT);
});
