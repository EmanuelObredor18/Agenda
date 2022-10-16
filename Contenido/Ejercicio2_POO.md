# Ejercicio de Lógica
````
void main(){
  List empresas = [
    {"Pais": "Colombia", "Oficina": "Centro", "Numero": 1233},
    {"Pais": "Venezuela", "Oficina": "Sur", "Numero": 3312},
    {"Pais": "Perú", "Oficina": "Norte", "Numero": 2121}
  ];
  for(int i = 0; i < 3; i++){
    print("""---------------
    EMPRESA
    ${empresas[i]}""");
    Empresa empresa = Empresa(pais: empresas[i]["Pais"], oficina: empresas[i]["Oficina"], numero: empresas[i]["Numero"]);
    empresa.cantCaracteres();
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
    La cantidad de caracteres del pais es: $cantPais.
    La cantidad de caracteres del numero: $cantNumero. 
    La cantidad de caracteres de la oficina: $cantOficina''');
  }
  
  Empresa({this.pais, this.oficina, this.numero});
}
````