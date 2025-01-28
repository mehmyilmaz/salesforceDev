public  class ProductCatalog {
  //yazdigimiz methodda catalog daki tum urunleri adini ve fiyatini birer birer print edelim.

  public static void displayProductPrices(){
    Map<String, Decimal> productPriceMap = new Map<String, Decimal>();
    productPriceMap.put('laptop', 1500);
    productPriceMap.put('smartphone', 308.75);
    productPriceMap.put('Smartwatch', 255.55);
    productPriceMap.put('Monitor', 150.50);
    
    for (String  proName : productPriceMap.keySet()) {
        Decimal price = productPriceMap.get(proName);
        System.debug('product Name : '+proName + ' price '+price);
    }
  }

  public static string getProductPrice(string productName){
       Map<String, Decimal> productPriceMap = new Map<String, Decimal>{'Laptop'=>1500.00, 'Smartphone'=>308.75,'Smartwatch'=>255.55,' Monitor'=>150.30};
       string result;
       if (productPriceMap.containsKey(productName)) {
           result = productName + ' fiyati : $ '+productPriceMap.get(productName);


         }else {
            result = productName +' bulunmamaktadir';
            }

        return result;
    }
} 