var obj = {
    test: function(a,b){
        console.log("Test",a,b);
        return "Test:" + a + " " + b;
    }

}
var origin = obj.test;
obj.test = function(a,b){
    console.log("Before execute");
    let result = origin.apply(obj,[a,b]);
    console.log("After execute");
    return result;
}

obj.test("Anderson","Lira");