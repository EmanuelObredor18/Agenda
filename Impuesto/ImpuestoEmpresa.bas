Attribute VB_Name = "Módulo1"
Sub ImpuestoEmpresa()
  
  ingreso = InputBox("¿De cuánto es el ingreso anual de su empresa?")
  
  If ingreso >= 10000001 Then
  Impuesto = (ingreso * 25) / 100
  MsgBox ("Su empresa debe pagar el valor de: ") & Impuesto & (" pesos como impuesto.")
  Else
    If ingreso >= 1000001 Then
    Impuesto = (ingreso * 20) / 100
    MsgBox ("Su empresa debe pagar el valor de: ") & Impuesto & (" pesos como impuesto.")
    Else
      If ingreso >= 100001 Then
      Impuesto = (ingreso * 15) / 100
      MsgBox ("Su empresa debe pagar el valor de: ") & Impuesto & (" pesos como impuesto.")
      Else
        If ingreso >= 10001 Then
        Impuesto = (ingreso * 10) / 100
        MsgBox ("Su empresa debe pagar el valor de: ") & Impuesto & (" pesos como impuesto.")
        Else
          If ingreso >= 1001 Then
          Impuesto = (ingreso * 5) / 100
          MsgBox ("Su empresa debe pagar el valor de: ") & Impuesto & (" pesos como impuesto.")
          Else
            If ingreso >= 0 Then
            MsgBox ("Su empresa no debe pagar impuestos.")
            End If
          End If
        End If
      End If
    End If
  End If
End Sub
