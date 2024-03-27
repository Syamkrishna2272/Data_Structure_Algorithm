main(){
var a=feb(6);
print(a);
}

feb(int n){
  if(n<2){
    return n;
  }else{
    return feb(n-1)+feb(n-2);
  }
}