package Animais;

public class Cachorro {
//atributos
    private String nome;
    private  String cor;
    private  int altura;
    private  double peso;
    private  int tamanhoDoRabo;
    private String estadoDeEspirito;


 //construtores
 

 
 //métodos
    public String getNome() {
        return nome;
    }


  //construtores
    public Cachorro(){}

    public Cachorro(String nome, String cor, int altura, double peso, int tamanhoDoRabo, String estadoDeEspirito) {
        this.nome = nome;
        this.cor = cor;
        this.altura = altura;
        this.peso = peso;
        this.tamanhoDoRabo = tamanhoDoRabo;
        this.estadoDeEspirito = estadoDeEspirito;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public int getAltura() {
        return altura;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public int getTamanhoDoRabo() {
        return tamanhoDoRabo;
    }

    public void setTamanhoDoRabo(int tamanhoDoRabo) {
        this.tamanhoDoRabo = tamanhoDoRabo;
    }
    public String getEstadoDeEspirito() {
        return estadoDeEspirito;
    }

    public void setEstadoDeEspirito(String estadoDeEspirito) {
        this.estadoDeEspirito = estadoDeEspirito;
    }

    public void comer(){}

    public void latir(){
        System.out.println("Au Au");
    }

    public String pegar(){
        return "Bolinha";
    }

    
    public String interagir(String acao) {
        switch (acao) {
            case "carinho":
                this.estadoDeEspirito = "feliz";
                break;
            case "vai dormir!":
                this.estadoDeEspirito = "Bravo";
                break;
            default:
                this.estadoDeEspirito = "Neutro";
                break;
        }
        return estadoDeEspirito;
    }
    





}
