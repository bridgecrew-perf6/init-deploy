const http=require("http")
const fs=require("node:fs")

const html=fs.readFileSync("./index.html")
const server=http.createServer((req,res)=>{
    fs.createReadStream('./index.html').pipe(res)
    // res.end(html)
})

server.listen(3000,()=>{
    console.log('listen 3000')
})