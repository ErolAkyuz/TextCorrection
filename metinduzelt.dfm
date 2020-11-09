object fmkarakterduzelt: Tfmkarakterduzelt
  Left = 240
  Top = 158
  Caption = 'Karakter D'#252'zelt'
  ClientHeight = 601
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 854
    Height = 601
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Panel1: TPanel
        Left = 0
        Top = 487
        Width = 846
        Height = 86
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 40
          Top = 30
          Width = 106
          Height = 13
          Caption = 'De'#287'i'#351'tirilecek Karakter'
        end
        object Label2: TLabel
          Left = 203
          Top = 30
          Width = 116
          Height = 13
          Caption = 'Yerine Gelecek Karakter'
        end
        object Edit1: TEdit
          Left = 16
          Top = 49
          Width = 153
          Height = 21
          TabOrder = 0
          Text = 'Edit1'
        end
        object Edit2: TEdit
          Left = 191
          Top = 49
          Width = 153
          Height = 21
          TabOrder = 1
          Text = 'Edit1'
        end
        object Button1: TButton
          Left = 376
          Top = 24
          Width = 97
          Height = 46
          Caption = 'Karakter D'#252'zelt'
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 479
          Top = 24
          Width = 97
          Height = 46
          Caption = 'Kontrole Ba'#351'la'
          TabOrder = 3
          OnClick = Button2Click
        end
        object Button4: TButton
          Left = 582
          Top = 24
          Width = 97
          Height = 46
          Caption = 'Temizle '#220'st'
          TabOrder = 4
          OnClick = Button4Click
        end
      end
      object duzeltilmis: TMemo
        Left = 0
        Top = 233
        Width = 846
        Height = 248
        Align = alTop
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object rich: TMemo
        Left = 0
        Top = 0
        Width = 846
        Height = 233
        Align = alTop
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Button3: TButton
        Left = 320
        Top = 409
        Width = 97
        Height = 57
        Caption = 'Button3'
        TabOrder = 0
        OnClick = Button3Click
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 846
        Height = 369
        Align = alTop
        TabOrder = 1
      end
    end
  end
end
