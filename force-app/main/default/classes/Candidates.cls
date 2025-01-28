public class Candidates {
   public string name;
   public string gender;
   public static string companyName;

   public void printCandidate(){
    System.debug('---Start---');
    System.debug('candidate name is '+name+ ' , gender is '+gender);
    System.debug('company name is '+companyName);
    System.debug('---end===');
   }
   public static void printCompany() {
    System.debug('company => '+companyName);

   }
}