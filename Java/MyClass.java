import java.util.ArrayList;

public class MyClass extends MyParent implements MyInterface {

  // constructor method
  public MyClass(String firstName, String lastName) {
    super(firstName + " " + lastName);  // call super constructor
    this.firstName = firstName;
    this.lastName = lastName;
    System.out.println("Class constructor calls!");
  }

  @Override // override super class!
  public void speak() {
    super.speak();
    System.out.println("I'm " + this.firstName + " " + this.lastName);
  }

  public void rename(String name) {
    this.firstName = name;
  }

  // private variables
  private String firstName = "default value!";
  private String lastName;

  // constant
  private static final String constant = "I'm constant variable!";

  // fill strings static in first initials (call when needed -> when first static method called)
  public static ArrayList<String> strings;
  static {
    strings = new ArrayList<>();
    strings.add("Sadegh");
    strings.add("Ashghar");
    strings.add("Ghamar");
  }

  // default variable initials
  private ArrayList<String> strings2;
  {
    strings2 = new ArrayList<>();
    strings2.add("Sadegh");
    strings2.add("Ashghar");
    strings2.add("Ghamar");
  }

  // define inner class
  class InnerClass {
    public void speak() {
      System.out.println("I'm an inner class!");
    }
  }

  // define in block class
  public void callInBlockClass() {
    class InBlockClass {
      public void speak() {
        System.out.println("I'm an inBlock class!");
      }
    }
  }

  // enum???
  // public MyEnum enum;

}
