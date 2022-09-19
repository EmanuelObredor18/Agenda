# Agenda
### Indíce
1. Apuntes:
   - [Comandos aprendidos](/Contenido/Comandos_aprendidos.md)
2. Ejercicios  
   - [If anidados](/Contenido/If_anidados.md)  
   - [Usos del for](/Contenido/Usos_del_for.md)
   - [Usos del While](/Contenido/Usos_del_While.md)
``` 
Private Sub BB_Buscar_Click()
    propietario = Int(InputBox("Ingrese el número de cédula a buscar:"))
    sw = True
    While sw
        If propietario = Registro.Cells(fila, 1) Then
            MsgBox "La persona (" & Registro.Cells(fila, 1) & "), con número de cedula: " & Registro.Cells(fila, 2) & " tiene en su derecho el automovil: (" & Registro.Cells(fila, 4) & ")"
        Else
                
End Sub

Private Sub BB_Guardar_Click()
    fila = Registro.Cells(1, 6)
    Registro.Cells(fila, 1) = TextBox_Propietario
    Registro.Cells(fila, 2) = TextBox_Cedula
    Registro.Cells(fila, 3) = TextBox_Color
    Registro.Cells(fila, 4) = TextBox_Modelo
    TextBox_Propietario = ""
    TextBox_Cedula = ""
    TextBox_Color = ""
    TextBox_Modelo = ""
    TextBox_Propietario.Enabled = False
    TextBox_Cedula.Enabled = False
    TextBox_Color.Enabled = False
    TextBox_Modelo.Enabled = False
    BB_Nuevo.Enabled = True
    BB_Guardar.Enabled = False
    Registro.Cells(1, 6) = Registro.Cells(1, 6) + 1
End Sub
Private Sub BB_Nuevo_Click()
    TextBox_Propietario.Enabled = True
    TextBox_Cedula.Enabled = True
    TextBox_Color.Enabled = True
    TextBox_Modelo.Enabled = True
    Formulario_Registro.Caption = "Nuevo registro"
    BB_Nuevo.Enabled = False
    BB_Buscar.Enabled = True
    BB_Guardar.Enabled = True
    TextBox_Propietario.SetFocus
End Sub
``` 
