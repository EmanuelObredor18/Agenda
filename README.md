# Agenda
- Comandos Aprendidos  
    - [Comandos Aprendidos](Contenido/Comandos_aprendidos.md)
- Ejercicios  
    - [If Anidados](Contenido/If_anidados.md)
    - [Usos del for](Contenido/Usos_del_for.md)
    - [Usos del While](Contenido/Usos_del_While.md)
    ```
    void main(){
  List empresas = [
    {"Pais": "Colombia", "Oficina": "Centro", "Numeros": 1233}, 
    {"Pais": "Venezuela", "Oficina": "Sur", "Numeros": 3312}, 
    {"Pais": "Perú", "Oficina": "Norte", "Numeros": 2121}, 
  ];
  
  for(int i = 0; i <= 2; i++){
    Empresa empresa = Empresa(numero: empresas[i]["Numeros"], oficina: empresas[i]["Oficina"], pais: empresas[i]["Pais"]);
    print(empresas[i]);
    print({empresa.cantCaracteres()});
    print('    CODIGO: ${empresa.generarCodigo()}'); 
  }
}

class Empresa{
  String? pais, oficina;
  int? numero;
  
  String generarCodigo() => pais!.substring(0, 3) + numero!.toString().substring(0, 3) + oficina!.substring(oficina!.length - 3, oficina!.length);
  
  void cantCaracteres(){
    int cantPais = pais!.length;
    int cantNumero = numero!.toString().length;
    int cantOficina = oficina!.length;
    print('''
    EMPRESA
    La cantidad de caracteres del pais es: $cantPais.
    La cantidad de caracteres del numero: $cantNumero. 
    La cantidad de caracteres de la oficina: $cantOficina\n''');
  }
  
  Empresa({this.pais, this.oficina, this.numero});
  
