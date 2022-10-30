````
    package listas_pila;

    import javax.swing.JOptionPane;

    public class Pila {

        private Nodo ultimoValorIngresado;
        private int tamano;
        private String Lista = "";

        //Constructor
        public Pila(){
            ultimoValorIngresado = null;
            tamano = 0;
        }

        //Metodo para saber si la pila esta vacía
        public boolean PilaVacia(){
            return ultimoValorIngresado == null;
        }

        //Metodo para insertar un nodo en la pila
        public void InsertarNodo(int nodo){
            Nodo nuevoNodo = new Nodo(nodo);
            nuevoNodo.siguiente = ultimoValorIngresado;
            ultimoValorIngresado = nuevoNodo;
            tamano++;
        }

        //Metodo para eliminar un nodo en la pila
        public int EliminarNodo(){
            int auxiliar = ultimoValorIngresado.informacion;
            ultimoValorIngresado = ultimoValorIngresado.siguiente;
            tamano--;
            return auxiliar;
        }

        //Metodo para conocer cual es el ultimo valor ingresado
        public int MostrarUltimoValorIngresado(){
            return ultimoValorIngresado.informacion;
        }

        //Metodo para conocer el tamaño de la pila
        public int TamanoPila(){
            return tamano;
        }

        //Metodo para vaciar la pila
        public void VaciarPila(){
            while (!PilaVacia()){
                EliminarNodo();
            }
        }

        //Metodo para mostrar el contenido de la pila
        public void mostrarContenido(){
            Nodo recorrido = ultimoValorIngresado;

            while(recorrido != null){
                Lista += recorrido.informacion + "\n";
                recorrido = recorrido.siguiente;
            }
            JOptionPane.showMessageDialog(null, Lista);
            Lista = "";
        }
    }
````