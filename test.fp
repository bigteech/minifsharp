// 函数声明
let createdict k,v,m,n = {
    // 字典
    {k,v;m,n};
}

// 函数调用
let mydict = createdict "a","2","b","4";

// 管道调用
mydict.a |> print;

// lambda表达式与管道
mydict.b 
    |> fn x = { x + " i am lambda exp "; }
    |> print;

let dict2 = {"m",1;"n",2};
dict2.m |> print;
dict2.n |> print;

let readfile path = {
    let p = ["read", "read2"];
    path |> file.[p.["0"]] |> print;
    p.["1"] |> print;
    path |> file.[p.["0"]];
}

readfile "./test.txt" |> print;

let v = readfile "./test.txt";

if v {
   print v;
} else {
   print 2,(4+1),4;
}


let hf text = {
    print text;
}

let hf2 x = {
    x;
}

// 连续调用

hf2 hf "test hf";