package Animais;

public class Gato extends Animal {

    static int numeroDeGatos;


    public Gato(String nome, String cor, double peso) {
        super(nome, cor, peso);
    }


  
    @Override
    public String toString() {
        return "Gato [nome=" + nome + "]";
    }
}

