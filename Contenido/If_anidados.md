# Ejercicio con 'if' anidados
```  
Sub ImpuestoEmpresa()  
    ingreso = InputBox("¿De cuánto es el ingreso anual de su empresa?")  
    
    If ingreso >= 10000001 Then  
    Impuesto = (ingreso * 25) / 100
    Total = Impuesto + ingreso
    MsgBox ("Su empresa debe pagar el valor de: ") & Impuesto & (" pesos como impuesto.")
    MsgBox ("Su empresa debería pagar en total: ") & Total & (" pesos.")
    Else
      If ingreso >= 1000001 Then
      Impuesto = (ingreso * 20) / 100  
      Total = Impuesto + ingreso  
      MsgBox ("Su empresa debe pagar el valor de: ") & Impuesto & (" pesos como impuesto.")  
      MsgBox ("Su empresa debería pagar en total: ") & Total & (" pesos.")  
      Else  
        If ingreso >= 100001 Then  
        Impuesto = (ingreso * 15) / 100  
        Total = Impuesto + ingreso  
        MsgBox ("Su empresa debe pagar el valor de: ") & Impuesto & (" pesos como impuesto.")  
        MsgBox ("Su empresa debería pagar en total: ") & Total & (" pesos.")  
        Else  
          If ingreso >= 10001 Then  
          Impuesto = (ingreso * 10) / 100  
          Total = Impuesto + ingreso  
          MsgBox ("Su empresa debe pagar el valor de: ") & Impuesto & (" pesos como impuesto.")  
          MsgBox ("Su empresa debería pagar en total: ") & Total & (" pesos.")  
          Else  
            If ingreso >= 1001 Then  
            Impuesto = (ingreso * 5) / 100  
            Total = Impuesto + ingreso  
            MsgBox ("Su empresa debe pagar el valor de: ") & Impuesto & (" pesos como impuesto.")  
            MsgBox ("Su empresa debería pagar en total: ") & Total & (" pesos.")  
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
```  