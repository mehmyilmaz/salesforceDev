public class Calculator {
    public void welcomeMessage() {
        System.debug('welcome to apex calc');
    }
    public string printAndReturnMessage(string m) {
        string returnStr = '';
        System.debug('message is '+m );
        returnStr = m +'...OK Cool';
        return returnStr;
    }
    
}