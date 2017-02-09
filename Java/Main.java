import java.util.ArrayList;
import java.util.HashMap;

import java.util.ListIterator;
import java.util.Set;
import java.util.Iterator;

public class Main {
  public static void main(String[] args) {

    ///// variables ////////////////////////////////////////////////////////////
    char c = 'A';
    String s = "sadegh";
    boolean b = true;
    int ii = 1000;
    int ij = 1_000_000; // 1,000,000
    long l = 1000000L;
    float f = 100.1f;
    double d = 1232332d;

    String[] stringArray = { "1- sadegh", "2- asghar", "3- gholam" };


    ///// print I/O ////////////////////////////////////////////////////////////
    System.out.println(s);


    ///// condition ////////////////////////////////////////////////////////////
    if(s.equals("sadegh"))
      System.out.println("yes!");

    // switch-case can be use for string too!
    switch( ii ) {
      case 100:
        System.out.println("case 1");
        break;
      case 200:
        System.out.println("case 2");
        break;
      default:
        System.out.println("other");
    }


    ///// loops ////////////////////////////////////////////////////////////////
    for (int i = 0; i < stringArray.length; i++) {
      System.out.println(stringArray[i]);
    }

    for (String eachString : stringArray) {
      System.out.println(eachString);
    }

    int curr = 0;
    while(curr < stringArray.length) {
      System.out.println(stringArray[curr]);
      curr++;
    }


    ///// functions ////////////////////////////////////////////////////////////
    myFunc();
    System.out.println( sum(1,2,3,4,5,6,7,8,9) );
    System.out.println( sum("sa", "de", "gh") );


    ///// String ///////////////////////////////////////////////////////////////
    String testString = "this is a simple text!";
    testString.length();  // 22
    testString.indexOf("is"); // 5
    testString.substring(5);  // is a simple text!
    testString.substring(5, 7); // is
    testString.trim(); // remove blank spaces!


    ///// Exeptions Handling ///////////////////////////////////////////////////
    try {
      stringArray[10] = "X";
    } catch(Exception e) {
      System.out.println("error occured!");
    }

    try {
      badFunction();
    } catch(ArrayIndexOutOfBoundsException e) {
      System.out.println("error occured!");
    } finally {
      // do something!
    }


    ///// ArrayList ////////////////////////////////////////////////////////////
    ArrayList<String> list = new ArrayList<String>();

    list.add("sadegh"); // append
    list.add(1, "ghamar");  // insert at position 1
    list.remove(0); // remove
    list.size();  // get array size
    list.indexOf("ghamar"); // find index
    list.get(0);  // get item (ghamar)
    list.clear(); // clear list


    ///// HashMap //////////////////////////////////////////////////////////////
    HashMap<String, String> map = new HashMap<String, String>(); // Int?

    map.put("bist", "20");  // add item
    map.get("bist"); // get item (100)
    map.remove("bist"); // remove item
    map.clear();  // clear map


    ///// Iterator /////////////////////////////////////////////////////////////
    ListIterator<String> listIter = list.listIterator();  // list iterator
    while( listIter.hasNext() )
      System.out.println( listIter.next() );

    Set<String> keys = map.keySet();  // map iterator
    Iterator<String> keyIterator = keys.iterator();
    while( keyIterator.hasNext() )
      System.out.println( keyIterator.next() + "->" + map.get(keyIterator.next()) );


    ///// Classes //////////////////////////////////////////////////////////////
    MyClass myClass = new MyClass("Sadegh", "Hayeri");
    myClass.speak();

    MyParent myParent = new MyClass("Asghar", "Asghari");
    myParent.speak(); // ???

    // down cast
    MyClass myClass2 = (MyClass)myParent;
    myClass2.rename("Saghar");

    // get super class???
    // Class<?> sup = myClass.getSuperClass();
  }

  // functions
  private static void myFunc() {
    System.out.println("myFunc called!");
  }

  // list args?
  private static int sum(int... numbers) {
    int result = 0;
    for (int i : numbers)
      result += i;
    return result;
  }

  // overloading (sum)
  private static String sum(String... texts) {
    String result = "";
    for (String s : texts)
      result += s;
    return result;
  }

  // might be throw exception?
  private static void badFunction()
    throws ArrayIndexOutOfBoundsException {
    String[] tmp = {"one"};
    tmp[100] = "sadegh";
  }

}
