﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated from a template.
'
'     Manual changes to this file may cause unexpected behavior in your application.
'     Manual changes to this file will be overwritten if the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Imports System
Imports System.Data.Entity
Imports System.Data.Entity.Infrastructure

Partial Public Class Halloween2012Entities
    Inherits DbContext

    Public Sub New()
        MyBase.New("name=Halloween2012Entities")
    End Sub

    Protected Overrides Sub OnModelCreating(modelBuilder As DbModelBuilder)
        Throw New UnintentionalCodeFirstException()
    End Sub

    Public Overridable Property Categories() As DbSet(Of Category)
    Public Overridable Property Customers() As DbSet(Of Customer)
    Public Overridable Property Invoices() As DbSet(Of Invoice)
    Public Overridable Property LineItems() As DbSet(Of LineItem)
    Public Overridable Property Products() As DbSet(Of Product)

End Class
