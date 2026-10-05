" Vim syntax file for VTScada scripting
" Language:     VTS
" Author:       Charles Homan
" Date:         May 15, 2026
" File Types:   .SRC
" Version:      0.1
if exists("b:current_syntax")
  finish
endif

" Case is generally insensitive in VTScada, but good practice is mixed case
" syn case ignore

" Annotations
syn match           hlslAnnotation          /<.*;>/

syn keyword         vtsFunc                 Abs AbsTime AcceptSecurityContext Accumulate Ack AckAllAlarms AckAllAlarmsPlusDlg Acknowledge ACos AcquireLock Active ActiveCode ActiveState ActiveWindow ActiveX AddAccount AddCertificate AddConnection AddContributor AddEditorText AddEvent AddLock AddModule AddNote AddOptional AddParameter AddRead AddressEntry AddState AddStatement AddToList AddVariable AdHocAlarm AdjustArray AdjustCode AlarmCondition AlarmUnAckCondition AlignSelected AlternateLogoff AlternateLogon AMax AMin And AppIsRunning AppIsStarted AppIsStarting ApplyChangeSetFile Arc ArrayDimensions ArrayOp1 ArrayOp2 ArraySize ArrayStart ArrayToBuff ArrayToDictionary ASin ATan AudioFileLength Authenticate AValid
syn keyword         vtsFunc                 Ball Bar Base64Decode Base64Decoder Base64Encode Base64Encoder Beep Bevel BinaryToIP BinIP2Text Bit BitmapInfo Blend BlockDecrypt BlockEncrypt BlockWrite Box Brush Bubble BubbleList BubbleQueueLength BubbleReceive BubbleSend BuffOrder BuffRead BuffStream BuffToArray BuffToHex BuffToParm BuffToPointer BuffWrite BuildDelete BuildFullName BuildInsert BuildSelect BuildUpdate
syn keyword         vtsFunc                 Call CalledInstances Caller CanAddLock CancelCall CanControl CanControl CanDenyTokenRequest CanEditDoc CanGrantTokenRequest CanReleaseToken CanRemoveLock CanRequestToken CaptureImage CaptureSettings Case Cast Ceil Change CharCount Checkbox CheckCertificateChain CheckFileExist CheckIPMask CheckPathExist CheckSignature CheckTagGroup ChildDocs ChildInstances Circle CleanModule ClearModule ClearState ClearVarMetaData Click ClientSocket ClipboardGet ClipboardPut ClosePopUp CloseStream Cls CodeText ColorSelect Combine COMClient COMEvent CommaFormat CommandLine Commission CommitEditedFiles CommitFocused Compile COMPort Compress COMStatus Concat Cond Configure ConnectToMachine ConstCount ConvertTimeStamp ConvertToDbDate ConvertToDbTime ConvertToDbTimeStamp ConvertToVTSDate ConvertToVTSTime ConvertToVTSTimeStamp Coordinates CoordToPixel CopyDir CopyIn CopyOut CopyRecords Cos CoverageSnapshot CRC CRCTable CreateModule CriticalSection Crop CrossReference CryptRandom CurrentLine CurrentTime CurrentWindow
syn keyword         vtsFunc                 Date DateNum DateSelector Day DBAdd DBDropList DBGetStream DBGridList DBInsert DBListGet DBListSize DBRemove DBSystem DBTransaction DBUpdate DBValue DDE DDEPoke DDEShareAdd DDEShareDel DeadBand Debugger Decode DecodeParms Decommission Decrypt DefaultNamingContext DefaultPrinter Deflate DeleteAccount DeleteArrayItem DeleteContributor DeleteModule DeleteOptional DeletePrivFromUser DeleteState DeleteStatement DeleteUser DeleteVariable DelPageFromApp DelRead DenyTokenRequest Deriv DeriveKey DetectFlatline DialogInitPos DictionaryCopy DictionaryRemove Diff Dir DirectApply Disable DisconnectFromMachine DLL DoLoop DoOperate DragHandle DrawArcPath DrawChordPath DrawEllipticalPath DrawPath DrawPiePath DrawScale DriveInfo Droplist DropTree DurationParameterEdit
syn keyword         vtsFunc                 Edge Edit EditFile EditINI EditINICheckbox Editor Ellipse Enable EnableHelp Encode EncodeURIComponent Encrypt ErrMessage Escape EvaluateAlarm Event ExecuteQuery ExecuteQueryCached Exp ExportKey
syn keyword         vtsFunc                 Fail FFT FileChooser FileDialogBox FileFind FileRootModule FileSize FileStream Filter FiltHigh FiltLow FindAction FindCertificate FindFile FindModem FindVariable FirstState FitOffset FitR2 FitSlope Flush FlushCache FocusID Folder Font FontDialog ForceEvent ForceServers ForceState FormalParms Format FormatBatchQuery FormatInteger FormatNumber FRead FWrite
syn keyword         vtsFunc                 GenerateHMAC GenerateKey GenerateSignature Get GetAccountID GetAccountInfo GetAdaptersInfo GetAlarmActionLabel GetAlarmConfiguration GetAlarmList GetAlarmName GetAlarmObject GetAlarmStat GetAlarmStateStats GetAlarmStatus GetAllTagTypesInGroup GetAllWorkstationNames GetAppInstance GetByte GetCertificateInfo GetClientDiverts GetClientGUIDs GetClientIPs GetClientList GetClientMode GetClientNodes GetCodeObj GetColorInfo GetConfiguration GetConnList GetContainerNumActive GetContainerNumUnacked GetContributors GetCryptoProvider GetCurrentRecipe GetCurrentSubordinate GetCurrentVersion GetDatePhrase GetDefaultValue GetDevices GetDisplayIndex GetDisplayRoot GetDisplayValue GetEquipmentColor GetEquipmentLabel GetFileAttribs GetFullName GetGroupName GetGUID GetHistory GetHostByName GetID GetInhibitedServiceList GetINIProperty GetInSyncServers GetInstance GetIP GetISOTSfromTS GetKeyCount GetKeyParam GetLastUsedSubnet GetLiveMJPEG GetLoadedAppInstance GetLocalIP GetLocalNumber GetLockLevel GetLog GetLogInfo GetLogonCredentialsFromSmartcard GetMachineNode GetMakeAltPtr GetModuleContext GetModuleRefBox GetModuleText GetModuleTimeStamp GetNameOfRecord GetNextKey GetNumUnacked GetOEMLayer GetOneParmText GetOPCServerRequestRate GetOutputTypes GetOverrides GetParameter GetParmPhrase GetParmPhraseForLang GetParmText GetParserOffset GetPathBound GetPhrase GetPhraseID GetPhraseForLang GetPlatformInfo GetPowerState GetPreferredSubnet GetRawPhrase GetRecipes GetReferencedValues GetRetainedValue GetRemoteVersion GetReportTypes GetReturnValue GetSelected GetSelectedInfo GetServer GetServerChanges GetServerMode GetServerNumber GetServerSIDPtr GetServersListed GetServiceScope GetSessionContainers GetSessionContainerTags GetSessionID GetShapePath GetSocketStatus GetState GetStatement GetStatementNum GetStateText GetStatus GetStreamLength GetStructInfo GetStreamType GetSubnetPriority GetSubordinateDriver GetSystemColor GetTagConfiguredParameters GetTagHistory GetTagList GetTagMode GetTagProperty GetTagTypes GetTimePhrase GetToken GetToken GetTokenLevel GetTrajectoryPath GetTransform GetTSfromISOTS GetTransitText GetUserName GetUserNameOfRecord GetUserSession GetValue GetValueAttribute GetVariableText GetVariableType GetVarMetadata GetVersions GetVoices GetWCPath GetWCRevision GetXformRefBox GetXMLNodeArray GoToOffset GrantTokenRequest Grid GridList GUIArc GUIBitmap GUIButton GUIChord GUIEllipse GUIPie GUIPipe GUIPolygon GUIRectangle GUIText GUITransform
syn keyword         vtsFunc                 HasCompilationErrors Hash HasMetaData HasReturnStatement HasUndeployedChanges Help HexToBuff HighlightModule HistorianConnect HistorianDeleteRecords HistorianGetData HistorianGetInfo HistorianReadRecords HistorianWriteRecords HoursEntry HScrollbar HTTPSend
syn keyword         vtsFunc                 IconMarker ImageArray ImageParmSet ImageSweep ImportAPI ImportKey In InsertArrayItem Instance Int Intgr InWord IPAddressList IPMaskToText IsActive IsAppEditable IsChild IsClient IsEqual IsDictionary IsDisabled IsLoggedOn IsMatch IsOnLocalBranch IsPotentialServer IsPrimaryServer IsRunning IsRunOnly IsSecured IsServiceReady IsShelved IsSuspended IsSuppressed IsTagOperable IsUnacked IsVICSession
syn keyword         vtsFunc                 JoinStrings JSONEncode JSON_Encode JSONParse
syn keyword         vtsFunc                 KeyCount KeyFake Keys
syn keyword         vtsFunc                 LargeSocketWrite LastSelected Latch Launch LayerInUse LayerRoot\Stop Limit Line LinearIndicator LinearLegend ListAdd Listbox ListCertificates ListInstances ListKeys ListRemove ListVars Ln LoadDLL LoadMIB LoadModule LocalGroup LocalScope Locate LocCapture LocSwitch Log LogNTEvent LogOff LookUp LValue
syn keyword         vtsFunc                 MACID MakeAlarmRecordSpeechFile MakeArray MakeBitmap MakeBuff MakeCall MakeDAG MakeDictionary MakeEditor MakeIPMask MakeNonPersistent MakeNonShared MakeParmPhrase MakePersistent MakeSelfSignedCertificate MakeShared MakeValidFName MapDraw MatchKeys Max MCSInstance MCSMod Mean MemIn Memory MemOut MemTrace Merge Merge2 MetaData Min MkDir ModemCount ModemDev ModemDial ModemDigits ModemList ModemMedia ModemStream ModemTransfer ModifyAccount ModifyBitmap ModifyConfiguration ModifyTags ModifyUserPrivilege ModuleFileName ModuleHighlighted ModuleSnapshot Month MoveEditor MoveSibling MoveWindow MultiCheckboxParameterEdit MuteSound
syn keyword         vtsFunc                 New NewTagsFullyStarted NextFocusID Normal Normalize NormalTrip Not NotifyVIC Now NParm NumericParameterEdit NumInstances NumParms NumSelected NumSets NumVariables
syn keyword         vtsFunc                 ODBC ODBCBeginTrans ODBCColumns ODBCCommit ODBCConfigureData ODBCConnect ODBCDisconnect ODBCRollback ODBCSources ODBCStatus ODBCTables OffNormal OilVolumeCorrectionFactor OilVolumeCorrectionToBase OkToWrite Ones OpChange OPCServer Or Out Output OutWord OwningModule
syn keyword         vtsFunc                 Pack PackParms PackRPC PAddressEntry PAlmPriority PalStatus Parameter ParameterEdit ParameterSet PAreaSelect ParentModule ParentObject ParentWindow ParmPhrase ParmToBuff ParserSRO PasteObjects Path PathDraw PatternMatch PCheckbox PColorEdit PColorSelect PContributor PDroplist PEditfield PEditName PFileChooser PeekStream Pen Pending PercentDifference PersistentSize PhraseDroplist PhraseEdit PHSliderBar PHueSelect Pick PickBMP PickValid PID Pie PImageSelect PIPAddressList PIPListenerGroup Pipe PipeStream PixelColor PKTrend Platform Play Plot PlotBuff PlotXY PMultiCheckBox PointerToBuff PointList Popup POverride Pow PPageSelect PPhraseDroplist PPhraseEdit PPPDial PPPHandles PPPStatus PRadioButtons PrepStringForTemplate Print PrintDialogBox PrintLine ProcessingLoad ProcInfo ProgressBar ProtobufDecode ProtobufEncode ProtobufInstantiate ProtobufParse PrtScrn PSecBit PSelectCertificate PSelectObject PServerListName PSpinbox PTimeZone PType PTypeToggle PWidgetSelect
syn keyword         vtsFunc                 QuietLogon
syn keyword         vtsFunc                 RadialIndicator RadialLegend RadioButtons Rand Read ReadBlock ReadConfiguration ReadINI ReadINIProperties ReadLock ReadPropertiesFile ReadSectINI ReadX ReadXY RecommendAlternate RecommendPrimary RecordProperty Redirect Register Alarm Manager Register Register RegisterCustomTable ReleaseLock ReleaseToken RemoveCertificate RemoveFromList RemoveLock RemoveParameter RemWSDL Rename Replace ReplaceStatement ReportError RepoSubscribe RequestToken Reset ResetParm ResultFormat ResyncDoc Reverse RibbonCmd RibbonContextUI RibbonGalleryItems RibbonSetProperty RmDir RootTransform RootValue RootWindow Rotate RTimeOut RUNFileName RUNFileVersion RunInBubble RunPack
syn keyword         vtsFunc                 Save SaveFile SaveHistory SaveImage SaveModule Scale Scope ScopeLocal SDev Seconds SectionControl SecurityCheck Seek SelColor SelectArea SelectCodePointer SelectDAG SelectGraphic SelectHandle SelectHandleNum SelectPath Self Send SendMail SerBreak SerCheck SerialNum SerialStream SerIn SerLen SerOut SerRcv SerRTS SerSend SerStrEsc SerString ServerList ServerSocket SerWait Set SetAllBlocks SetBit SetByte SetCertificateProperty SetClock SetCodeText SetCurrentFilter SetCurrentRecipe SetCurrentVersion SetCursor SetDDEServer SetDefault SetDivert SetEditMode SetEnable SetFileAttribs SetHandle SetHelp SetINIProperty SetInstanceName SetInstanceRefBox SetKeyParam SetLibrary SetModuleRefBox SetModuleText SetOneParmText SetOPCData SetOverride SetParameter SetParmText SetParserParm SetRefRect SetRemoteValue SetReturnValue SetShelved SetStateText SetSubnetPriority SetSuppressed SetSyncComplete SetTransfer SetTransitText SetUserLanguage SetVariableClass SetVariableText SetVariableType SetVarMetadata SetVicParms SetWSDL SetXLoc SetYLoc ShellTemperatureCorrection ShiftStream ShowLexicon ShowPage ShowPage2 SilenceSound SimpleOpChange SimulateMouse Sin SiteDispParms SizeWindow SocketAttribs SocketPingSetup SocketServerEnd SocketServerStart SocketWait Sort SortArray Sound Spawn Speak SpeakToFile Spinbox SplitList SplitListSelector SplitPath SplitString SplitTagSelector SQLQuery Sqrt SRead Start StartTag StateList StatementInstance StateName StaticSize StatsWin Step Stop StopPage StrCmp StreamEnd StrICmp StrictlyEqual StrictlyNotEqual StrJustify StrLen SubStatementIndex SubStr Sum SumBuff SWrite SystemSelf
syn keyword         vtsFunc                 TableInterpolation TableSynch Tag TagIconMarker Tan Target TempFileStream TextAttribs TextBox TextEncode TextIP2Bin TextOffset TextSearch TextSize TGet Thread ThreadHistory ThreadIdle ThreadList ThreadName ThreadPriority Time TimeArrived TimeOut TimestampParameterEdit TimeUtils TimeZone TimeZoneList Today TODBC TODBCBeginTrans TODBCCommit TODBCConnect TODBCDisconnect TODBCRollback Toggle ToggleVal ToLower ToolBar ToUpper Trajectory Transaction TransactionCached TransferFields TreeControl TriggerCounter TrimSpaces Trip TServerList
syn keyword         vtsFunc                 UIErrorToText UnEscape Unpack UnpackData UnpackParms Unregister UnselectGraphics UnselectObject UnTransform UntypedParameterEdit UpdateCoordinates UserCredChange UserLogonDialog
syn keyword         vtsFunc                 Valid ValidateEmailAddrs ValueType VarAttributes VariableClass Variance Version VersionRequired Vertex VICInfo VICMessage VICSmartcardMonitor VICSmartcardResponse VoiceTalk VScrollbar VStatus
syn keyword         vtsFunc                 WatchForTagChanges WatchTags WCSubscribe WebBrowser WebBrowserNavigate WebSktSubscribe WhileLoop WinButton WinComboCtrl Window WindowClose WindowOptions WindowsLogon WindowSnapshot WinEditCtrl WinLocSwitch WinLocWheel WinMatchKeys WinShiftKeys WinTooltipCtrl WinXLoc WinYLoc WKSList WKSPath WKSStatus WKStaInfo WrapText Write WriteHistory WriteINI WriteINIProperties WriteLock WritePropertiesFile WriteSectINI
syn keyword         vtsFunc                 XLoc XMLAddSchema XMLCloneNode XMLCreateNode XMLDeleteMember XMLGetNode XMLParse XMLProcessor XMLWrite XOr
syn keyword         vtsFunc                 Year YLoc
syn keyword         vtsFunc                 ZBar ZBox ZButton ZColorChange ZEditField ZGrid Zip ZLine ZPipe ZText

" Control Flow & Statements
syn keyword vtsStatement If IfElse IfOne IfThen Execute Watch WatchArray WhileLoop DoLoop ForLoop
syn keyword vtsStatement Return Break Continue Slay
syn keyword vtsStatement Next State Module Struct Constant

" Types
syn keyword vtsType Text Point Integer Float Boolean Variable Double
syn keyword vtsType Array Object Dictionary

" Constants & Booleans
syn keyword vtsConst Invalid TRUE FALSE Yes No

" ---------------------------------------------------------------------
" Numbers
" ---------------------------------------------------------------------
" Hexadecimal
syn match vtsHex "\<0[xX][0-9a-fA-F]\+\>"
" Decimal and Floating Point
syn match vtsNumber "\<\d\+\(\.\d\+\)\?\>"

" ---------------------------------------------------------------------
" Strings
" ---------------------------------------------------------------------
" Double-quoted strings with escape characters
syn region vtsString start=+"+ skip=+\\\\\|\\"+ end=+"+

" ---------------------------------------------------------------------
" Comments
" ---------------------------------------------------------------------
syn region vtsComment start="{" end="}" contains=vtsTodo

" TODO items inside comments
syn keyword vtsTodo TODO FIXME XXX NOTE contained

" ---------------------------------------------------------------------
" Delimiters & Operators
" ---------------------------------------------------------------------
" Module Enclosures
syn match vtsEnclosure "[<>]"
" Brackets for parameters ( ) and states/variables [ ]
syn match vtsBracket "[()[\]]"
" Special operators
syn match vtsOperator "==\|!=\|>=\|<=\|=\|>\|<\|!\|&&\|||\|?\|:\|+\|-\|*\|/\|\\"
" syn match vtsOperator '==\|!=\|>=\|<=\|=\|>\|<\|!\|&&\|||\|?\|:\|+\|-\|\*\|/\|\\'

" ---------------------------------------------------------------------
" Highlight Linking
" ---------------------------------------------------------------------
hi def link vtsStatement    Statement
hi def link vtsFunc         Function
hi def link vtsType         Type
hi def link vtsConst        Constant
hi def link vtsHex          Number
hi def link vtsNumber       Number
hi def link vtsString       String
hi def link vtsComment      Comment
hi def link vtsTodo         Todo
hi def link vtsEnclosure    Special
hi def link vtsBracket      Delimiter
hi def link vtsOperator     Operator

let b:current_syntax = "vts"

