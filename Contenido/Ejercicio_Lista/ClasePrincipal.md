````
package listas_pila;

import javax.swing.JOptionPane;

public class ClasePrincipal {
    public static void main(String[] args) {
        int seleccion = 0, nodo;
        Pila pila = new Pila();
        
        do{
           try{
                seleccion = Integer.parseInt(JOptionPane.showInputDialog(null, 
                "Menú de opcciones\n\n"
                + "1. Insertar nodo\n"
                + "2. Eliminar nodo\n"
                + "3. ¿La pila está vacía?\n"
                + "4. ¿Cuál es el ultimo valor ingresado en la pila?\n"
                + "5. ¿Cuántos nodos tiene la pila?\n"
                + "6. Vaciar pila\n"
                + "7. Mostrar contenido de la pila\n"
                + "8. Salir\n\n"));
               switch(seleccion){
                    case 1:
                       nodo = Integer.parseInt(JOptionPane.showInputDialog(null, "Ingrese el valor a agregar: "));
                       pila.InsertarNodo(nodo);
                       break;
                    case 2:
                        if(!pila.PilaVacia()){
                            JOptionPane.showMessageDialog(null, "El valor eliminado fue: " +
                            pila.EliminarNodo());
                        } else {
                            JOptionPane.showMessageDialog(null, "La pila está vacía");
                        }
                        break;
                    case 3:
                        if(!pila.PilaVacia()){
                            JOptionPane.showMessageDialog(null, "La pila NO está vacía");
                        } else
                            JOptionPane.showMessageDialog(null, "La pila está vacía");
                        break;
                    case 4:
                        if(!pila.PilaVacia()){
                            JOptionPane.showMessageDialog(null, "El ultimo valor ingresado es: " + 
                            pila.MostrarUltimoValorIngresado());
                        } else {
                            JOptionPane.showMessageDialog(null, "La pila está vacía");
                        }
                        break;
                    case 5:
                        JOptionPane.showMessageDialog(null, "El tamaño de la pila es: " 
                        + pila.TamanoPila());
                        break;
                    case 6:
                        if(pila.PilaVacia() == true){
                            JOptionPane.showMessageDialog(null, "La pila esta vacía");
                        } else
                            JOptionPane.showMessageDialog(null, "Se ha vaciado la pila");
                                pila.VaciarPila();
                        break;
                    case 7: 
                        pila.mostrarContenido();
                        break;
                    case 8:
                        seleccion = 8;
                        break;
                    default:
                        JOptionPane.showMessageDialog(null, "Error, opccion incorrecta");
               }
           } catch (NumberFormatException e){
               
           }
        } while (seleccion != 8);
    }
    
}
````