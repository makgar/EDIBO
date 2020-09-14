public class MyClass {
    public static void main(String[] args) {
        System.out.println("Hello EDIBO!");
        if(args.length > 0) {
            for (int i = 0; i < args.length; i++) {
                System.out.println("Hello " + args[i] + "!");
            }
        }
    }
}