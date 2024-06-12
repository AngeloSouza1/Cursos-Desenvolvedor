import Animais.Cachorro;


public class App {
    public static void main(String[] args) {
       
        
        Cachorro cao = new Cachorro();
        
        cao.nome = "MAX";
        cao.cor = "Preto";
        cao.altura = 40;
        cao.peso = 30;
        cao.tamanhoDoRabo = 15;

      System.out.println(cao);
    }
}
