import Animais.Cachorro;


public class App {
    public static void main(String[] args) {
               
        Cachorro cao = new Cachorro();

        
        cao.nome = "MAX";
        cao.cor = "Preto";
        cao.altura = 40;
        cao.peso = 30;
        cao.tamanhoDoRabo = 15;

        

        // cao.latir();
        // System.out.println("Cão pegou a " + cao.pegar());

        
        System.out.println("O cão está: " + cao.interagir("carinho"));
        System.out.println("O cão está: " + cao.interagir("vai dormir!"));        
        System.out.println("O cão está: " + cao.interagir("nada"));

    }
}
