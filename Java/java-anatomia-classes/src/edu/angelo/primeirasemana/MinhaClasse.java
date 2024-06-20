package edu.angelo.primeirasemana;
public class MinhaClasse {

    public static void main (String [] args){
        // System.out.println("Olá, bem-vindo!");

        String primeiroNome = "Angelo";
        String segundoNome = "Souza";
        String nomeCompleto = nomeCompleto(primeiroNome, segundoNome);
        System.out.println(nomeCompleto);   
    }

    public static String nomeCompleto(String primeiroNome, String segundoNome){
        return "Resultado do método: " + primeiroNome.concat(" ").concat(segundoNome);
    }
}
