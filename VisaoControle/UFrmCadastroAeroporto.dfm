inherited FrmCadastroAeroporto: TFrmCadastroAeroporto
  Caption = 'Cadastro de Aeroporto'
  ClientHeight = 236
  ClientWidth = 592
  Ctl3D = False
  ExplicitWidth = 608
  ExplicitHeight = 275
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 592
    ExplicitWidth = 592
    inherited lbCabecalho: TLabel
      Width = 228
      Caption = 'CADASTRO DE AEROPORTO'
      ExplicitWidth = 228
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 592
    ExplicitWidth = 592
  end
  inherited pnlBotoes: TPanel
    Top = 195
    Width = 592
    TabOrder = 3
    ExplicitTop = 195
    ExplicitWidth = 592
    inherited btnLimpar: TBitBtn
      Left = 357
      ExplicitLeft = 357
    end
    inherited btnExcluir: TBitBtn
      Left = 240
      ExplicitLeft = 240
    end
    inherited btnGravar: TBitBtn
      Left = 123
      ExplicitLeft = 123
    end
    inherited btnSair: TBitBtn
      Left = 474
      ExplicitLeft = 474
    end
  end
  object gbInformacoes: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 592
    Height = 109
    Align = alClient
    Caption = ' Informa'#231#245'es '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lbCodigoCidade: TLabel
      Left = 31
      Top = 77
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo Cidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edNome: TLabeledEdit
      Left = 104
      Top = 24
      Width = 369
      Height = 19
      Color = clInfoBk
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 60
      ParentFont = False
      TabOrder = 0
    end
    object edTamanhoPistaKM: TLabeledEdit
      Left = 104
      Top = 49
      Width = 121
      Height = 19
      Color = clInfoBk
      EditLabel.Width = 87
      EditLabel.Height = 13
      EditLabel.Caption = 'Tamanho Pista KM'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 60
      ParentFont = False
      TabOrder = 1
    end
    object btnLocalizarCidade: TButton
      Left = 227
      Top = 74
      Width = 30
      Height = 19
      Cursor = crHandPoint
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = btnLocalizarCidadeClick
    end
    object edCidade: TEdit
      Left = 104
      Top = 74
      Width = 121
      Height = 19
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
      OnExit = edCidadeExit
    end
    object stNomeCidade: TStaticText
      Left = 260
      Top = 74
      Width = 217
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'stNomeCidade'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      Transparent = False
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 544
  end
end
