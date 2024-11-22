import express from "express"
import bet from "./models/bet.js";

const PORT = 3001;
const app = express();

app.use("/api/v1", bet)
app.get('/',(req,res)=>{
    res.send("From home hii")
})


app.listen(PORT,()=>{
    console.log(`app listening on POrt ${PORT}`)
})