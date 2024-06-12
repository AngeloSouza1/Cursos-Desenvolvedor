import Animais.Cachorro;


public class App {
    public static void main(String[] args) {
               
        Cachorro cao = new Cachorro();

        
        Cachorro cao2 = new Cachorro("REX", "Marron", 35,50,16,"nada");
             
        // cao.setNome("MAX");
        // cao.setCor("Preto");
        // cao.setAltura(40);
        // cao.setPeso(30);
        // cao.setTamanhoDoRabo(15);

        System.out.println("O cão está: " + cao.interagir("carinho"));
        System.out.println("O cão está: " + cao.interagir("vai dormir!"));        
        System.out.println("O cão está: " + cao.interagir("nada"));


        System.out.println(cao2.getNome());    
        System.out.println(cao2.getPeso());    

    }
}
