   ``` 
   Sub Inicio()
    total_recolecta = 0
    aportaron_10k = 0
    aportaron = 0
    aporte_solo = 0
    c = 0
    no_aporte = 0
    
    While c < 3000000
        aporte_solo = InputBox("Cuanto va aportar")
        If aporte_solo = 0 Then
            no_aporte = no_aporte + 1
        Else
            If aporte_solo < 10000 Then
                aportaron = aportaron + 1
                c = aporte_solo + c
            Else
                aportaron_10k = aportaron_10k + 1
                aportaron = aportaron + 1
                c = aporte_solo + c
            End If
        End If
        aporte_solo = 0
    Wend
    prom = c / aportaron
    MsgBox "El promedio recaudado por estudiante es: " & prom
    MsgBox "El numero de estudiantes que aportaron es: (" & aportaron & ") estudiantes"
    MsgBox "El numero de estudiantes que no aportaron es: (" & no_aporte & ") estudiantes"
    MsgBox "Los estudiantes que aportaron una cantidad superior a $10.000: (" & aportaron_10k & ") estudiantes"
   End Sub
   ``` 