public with sharing class debuggingTest {
    
    public void init(){
        User u = [SELECT Id FROM User Where id=:UserInfo.getUserId() limit 1];
        List<Account> accList = [SELECT Id, Name From Account Where ownerId=:u.Id];

        Set<Id> accIds = new Set<Id>();
        for(Account acc : accList){
            accIds.add(acc.Id);
        }
        
    }

}
