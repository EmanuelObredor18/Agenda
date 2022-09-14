# Agenda
### Resumen de la clase
## Indíce
1. Apuntes 
   1.1. [Primera clase](Comandos/Primera%20clase/Comandos%20aprendidos.md)
2. Ejercicios  
   1.1. [Impuestos](Impuesto/ImpuestoEmpresa.md)  
   1.2. [Usos del for](Usos_del_for.md)
``` 
Sub Inicio()
    fila = 3
    c = 0
    sw = False
    
    entrada = Int(InputBox("Ingrese un numero de cedula"))
    
    While c < 2
        If entrada = Registro.Cells(fila, 2) Then
            MsgBox Registro.Cells(fila, 1)
        Else
            If (entrada = sw) Then
                MsgBox ("a")
            End If
            c = c + 1
            fila = fila + 1
        End If
    Wend
End Sub
``` 