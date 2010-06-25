@STATIC;1.0;p;15;AppController.jt;2049;@STATIC;1.0;I;21;Foundation/CPObject.jt;2004;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"AppController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("theWindow"),new objj_ivar("theDisplay"),new objj_ivar("buffer"),new objj_ivar("rightOp")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_3,_4,_5){
with(_3){
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_6,_7){
with(_6){
objj_msgSend(theDisplay,"setAlignment:",CPRightTextAlignment);
objj_msgSend(theDisplay,"setObjectValue:","0");
objj_msgSend(buffer,"setFloatValue:",0);
}
}),new objj_method(sel_getUid("updateDisplay:"),function(_8,_9,_a){
with(_8){
var _b=objj_msgSend(_a,"title");
var _c=objj_msgSend(theDisplay,"objectValue");
if(_c=="0"&&_b!="."){
_c=_b;
}else{
_c+=_b;
}
objj_msgSend(theDisplay,"setObjectValue:",_c);
}
}),new objj_method(sel_getUid("setOperator:"),function(_d,_e,_f){
with(_d){
buffer=objj_msgSend(objj_msgSend(theDisplay,"objectValue"),"floatValue");
objj_msgSend(theDisplay,"setObjectValue:","0");
operator=objj_msgSend(_f,"title");
rightOp=null;
}
}),new objj_method(sel_getUid("unaryOperator:"),function(_10,_11,_12){
with(_10){
buffer=objj_msgSend(objj_msgSend(theDisplay,"objectValue"),"floatValue");
operator=objj_msgSend(_12,"title");
objj_msgSend(_10,"resolve:",_12);
}
}),new objj_method(sel_getUid("clear:"),function(_13,_14,_15){
with(_13){
buffer=0;
operator="";
objj_msgSend(theDisplay,"setObjectValue:","0");
}
}),new objj_method(sel_getUid("resolve:"),function(_16,_17,_18){
with(_16){
var _19=0;
if(rightOp==null){
rightOp=objj_msgSend(objj_msgSend(theDisplay,"objectValue"),"floatValue");
}
switch(operator){
case "+":
_19=buffer+rightOp;
break;
case "-":
_19=buffer-rightOp;
break;
case "*":
_19=buffer*rightOp;
break;
case "÷":
_19=buffer/rightOp;
break;
case "sqrt":
_19=Math.sqrt(buffer);
break;
case "±":
_19=-1*buffer;
break;
default:
_19=buffer;
}
buffer=_19;
objj_msgSend(theDisplay,"setObjectValue:",buffer);
}
})]);
p;6;main.jt;267;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;181;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("AppController.j",YES);
main=function(_1,_2){
CPApplicationMain(_1,_2);
};
e;