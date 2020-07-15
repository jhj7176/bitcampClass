
        window.document.write('<h1>test</h1>');
        //    window.alert("sadf\r\nsadf");
        //JS컴파일 빠름, html&css 인터프리터 느림




        var arr = new Array();
        var obj = {
            'num': '1',
            'name': '',
            'kor': '11',
            'eng': '11',
            'math': '11',
            'getNum': function() {
                return obj.num;
            },
            'getName': function() {
                return obj.name;
            },
            'getKor': function() {
                return obj.kor;
            },
            'getEng': function() {
                return obj.ene;
            },
            'getNum': function() {
                return obj.math;
            },
            'setName': function(name) {
                this.name = name;
            },
             'setNum': function(num) {
                this.name = num;
            },
             'setKor': function(kor) {
                this.kor = kor;
            },
             'setEng': function(eng) {
                this.eng = eng;
            },
             'setMath': function(math) {
                this.math = math;
            }
            
            
            
            
            
        };
        
     
//        = function(name) {this.name = name;}
        
        obj.setName('safdsafsa');
        

        arr.push(obj);


        obj = {
            'num': 2,
            'name': 'test2',
            'kor': 77,
            'eng': 88,
            'math': 94
        };
        arr.push(obj);
        obj = {
            'num': 3,
            'name': 'test3',
            'kor': 77,
            'eng': 88,
            'math': 94
        };
        arr.push(obj);
        obj = {
            'num': 4,
            'name': 'test4',
            'kor': 77,
            'eng': 88,
            'math': 94
        };
        arr.push(obj);



        document.write('<table border ="1" width = 40%>');
        document.write('<tr>');
        document.write('<th>학번</th>');
        document.write('<th>이름</th>');
        document.write('<th>국어</th>');
        document.write('<th>영어</th>');
        document.write('<th>수학</th>');
        document.write('</tr>');

        for (var i = 0; i < arr.length; i++) {
            obj = arr[i];
            document.write('<tr align = "center">');
            document.write('<td>' + obj.num + '</td>');
            document.write('<td>' + obj.name + '</td>');
            document.write('<td>' + obj.kor + '</td>');
            document.write('<td>' + obj.eng + '</td>');
            document.write('<td>' + obj.math + '</td>');
            document.write('</tr>');
        }

        document.write('</table>');

