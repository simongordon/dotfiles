syntax on
let mapleader=" "
inoremap JK <esc>
set number
set rnu
set hlsearch
set ignorecase

noremap <leader>h :noh<ENTER>
noremap <leader>ve :e ~/sg_config/_vimrc<ENTER>
noremap <leader>ln :set rnu!<ENTER>

if has('ide')
    "noremap <leader>gd <Action>(Compare.LatestVersion)
    "noremap <leader>fc :action RecentChanges<ENTER>
    noremap <leader><leader> :action ActivateProjectToolWindow<ENTER>
    noremap <leader>bb :action BuildSolutionAction<ENTER>
    noremap <leader>br :action RebuildSolutionAction<ENTER>
    noremap <leader>co :action CloseAllEditorsButActive<ENTER>
    noremap <leader>fe :action ActivateProjectToolWindow<ENTER>
    noremap <leader>ff :action RecentFiles<ENTER>
    noremap <leader>fF :action RecentChangedFiles<ENTER>
    noremap <leader>fl :action RecentLocations<ENTER>
    noremap <leader>fo :action GotoFile<ENTER>
    "RiderUnitTestRunContextAction                      <M-;> <M-;> <C-S-R>
    "TestTreePopupMenu
    noremap <leader>gb :action Annotate<ENTER>
    noremap <leader>gd :action Compare.SameVersion<ENTER>
    noremap <leader>nb :action GotoNextBookmark<ENTER>
    noremap <leader>nd :action NextDiff<ENTER>
    noremap <leader>ne :action GotoNextError<ENTER>
    noremap <leader>nE :action ReSharperGotoNextErrorInSolution<ENTER>
    noremap <leader>nm :action MethodDown<ENTER>
    noremap <leader>no :action NextOccurence<ENTER>
    noremap <leader>pb :action GotoPreviousBookmark<ENTER>
    noremap <leader>pe :action GotoPreviousError<ENTER>
    noremap <leader>pm :action MethodUp<ENTER>
    noremap <leader>po :action PreviousOccurence<ENTER>
    noremap <leader>rc :action ChooseRunConfiguration<ENTER>
    noremap <leader>tl :action RiderUnitTestRepeatPreviousRunAction<ENTER>
    noremap <leader>tp :action Rider.UnitTesting.RunContext<ENTER>
    noremap <leader>vr :action IdeaVim.ReloadVimRc.reload<ENTER>
    noremap <leader>vt :action VimPluginToggle<ENTER>
    noremap <leader>vv :action VimFindActionIdAction<ENTER>
    noremap mm :action ToggleBookmark<ENTER>
    "RiderUnitTestRepeatPreviousRunAction               <M-;> <M-;>
    "RerunTests
    "HideAllWindows
    if &ide =~? 'Jetbrains Rider'
        set noideadelaymacro
    endif
else
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set autoindent

    set list
    " set list!
    set listchars=tab:>-
    set listchars+=tab:>-,space:.

    if ! empty(globpath(&rtp, 'autoload/plug.vim'))
        call plug#begin()
            Plug 'preservim/nerdtree'
        call plug#end()
        noremap <leader>fe :NERDTreeToggle<ENTER>
    end

    colorscheme habamax

    "noremap <leader>gf :e <cfile><cr>

    set splitbelow
    set mouse=a
endif

function! SetupInitial()
    !echo "source ~/sg_config/_vimrc" > ~/_vimrc
    !echo "source ~/sg_config/_vimrc" > ~/_ideavimrc
    !echo "source ~/sg_config/_bash_aliases" >> ~/.bash_aliases
endfunction

""--- Actions ---
""$Copy                                              <M-C>
""$Cut                                               <M-X> <S-Del>
""$Delete                                            <Del> <BS>
""$Paste                                             <M-V>
""$Redo                                              <M-S-Z> <A-S-BS>
""$SearchWeb
""$SelectAll                                         <M-A>
""$Undo                                              <M-Z>
""<anonymous-group-0>
""<anonymous-group-10>
""<anonymous-group-11>
""<anonymous-group-12>
""<anonymous-group-13>
""<anonymous-group-14>
""<anonymous-group-15>
""<anonymous-group-16>
""<anonymous-group-17>
""<anonymous-group-1>
""<anonymous-group-2>
""<anonymous-group-3>
""<anonymous-group-4>
""<anonymous-group-5>
""<anonymous-group-6>
""<anonymous-group-7>
""<anonymous-group-8>
""<anonymous-group-9>
"About
"ActivateBookmarksToolWindow                        <M-2>
"ActivateCommitToolWindow                           <M-0>
"ActivateDatabaseChangesToolWindow
"ActivateDatabaseToolWindow
"ActivateDebugToolWindow                            <M-S-D> <M-S-Y>
"ActivateDynamicProgramAnalysisToolWindow
"ActivateEndpointsToolWindow
"ActivateFileTransferToolWindow
"ActivateFindToolWindow                             <M-3>
"ActivateHierarchyToolWindow
"ActivateILViewerToolWindow
"ActivateInternalMethodTracingToolWindow
"ActivateNavBar
"ActivateNotificationsToolWindow
"ActivateNuGetToolWindow                            <M-A-7>
"ActivateProblemsViewToolWindow                     <M-S-M>
"ActivateProjectToolWindow                          <M-S-E>
"ActivatePullRequestsToolWindow
"ActivateRunToolWindow                              <M-S-U>
"ActivateServicesToolWindow                         <M-8>
"ActivateSpaceCodeReviewsToolWindow
"ActivateStructureToolWindow                        <M-7>
"ActivateTerminalToolWindow                         <C-À>
"ActivateTODOToolWindow
"ActivateToolWindowActions
"ActivateTypeScriptToolWindow
"ActivateUnitTestsToolWindow                        <M-A-8>
"ActivateVersionControlToolWindow                   <C-S-G>
"ActiveConfiguration
"ActiveConfigurationAndPlatformActionGroup
"ActiveDevice
"ActiveDeviceGroup
"ActiveRuntimeGroup
"ActiveToolwindowGroup
"AddAction
"AddAllToFavorites
"AddAnotherBookmark
"AddAttributeAction
"AddBom
"AddBom.Group
"AddNewFavoritesList
"AddNewPropertyFile
"AddReferenceAction
"AddRiderItem
"AddRiderProject
"AddScaffoldedItem
"AddSourcesContentToSourceMap
"AddSubtagAction
"AddToFavorites
"AddToFavoritesPopup
"AddWebReferenceAction
"AddXdtTransformationAction
"AdvancedBuildActions
"AdvancedBuildActionsMainMenu
"AnalyzeActions
"AnalyzeActionsPopup
"AnalyzePlatformMenu
"AnalyzePluginStartupPerformance
"AnalyzeStacktraceToolbar
"Angular2ExtractComponentAction
"angularCliAdd
"angularCliGenerate
"AngularJS.Show.Ui.Router.States.Diagram.Action
"Annotate
"AnnotateStackTraceAction.show.files.modification.info
"AppendNewGroup
"Architecture
"ArchiveProjectAction
"Arrangement.Alias.Rule.Add                         <C-CR>
"Arrangement.Alias.Rule.Context.Menu
"Arrangement.Alias.Rule.Edit
"Arrangement.Alias.Rule.Match.Condition.Move.Down
"Arrangement.Alias.Rule.Match.Condition.Move.Up
"Arrangement.Alias.Rule.Remove                      <Del> <BS>
"Arrangement.Alias.Rule.ToolBar
"Arrangement.Custom.Token.Rule.Edit
"Arrangement.Rule.Add                               <C-CR>
"Arrangement.Rule.Edit
"Arrangement.Rule.Group.Condition.Move.Down
"Arrangement.Rule.Group.Condition.Move.Up
"Arrangement.Rule.Group.Control.ToolBar
"Arrangement.Rule.Match.Condition.Move.Down
"Arrangement.Rule.Match.Condition.Move.Up
"Arrangement.Rule.Match.Control.Context.Menu
"Arrangement.Rule.Match.Control.ToolBar
"Arrangement.Rule.Remove                            <Del> <BS>
"Arrangement.Rule.Section.Add
"ArrangementRulesGroup
"AssemblyDiffAction                                 <M-D>
"AssemblyExplorerOpen
"AssemblyExplorerOpenFolder
"AssemblyExplorerOpenGAC
"AssemblyExplorerPopupMenu
"AssociateWithFileType
"AttachCurrentFolderAction
"AttachFolderAction
"AttachProfilerToLocalProcess
"AttachProject
"AttachToUnityProcessAction
"AutoIndentLines                                    <A-C-I>
"AutoShowProcessWindow
"Back                                               <C--> button=4 clickCount=1 modifiers=0
"BackendEntityFrameworkActionGroup
"BackgroundTasks
"BasicEditorPopupMenu
"BlankDiffViewerEditorPopupMenu
"Bookmarks
"Bookmarks.Goto
"Bookmarks.Toggle
"Bookmarks.ToolWindow.GearActions
"Bookmarks.ToolWindow.PopupMenu
"Bookmarks.ToolWindow.TitleActions
"BookmarksView.AskBeforeDeletingLists
"BookmarksView.AutoscrollFromSource
"BookmarksView.AutoscrollToSource
"BookmarksView.ChooseType
"BookmarksView.Create                               <C-CR>
"BookmarksView.DefaultGroup
"BookmarksView.Delete                               <Del> <BS>
"BookmarksView.DeleteType
"BookmarksView.GroupLineBookmarks
"BookmarksView.MoveDown
"BookmarksView.MoveUp
"BookmarksView.OpenInPreviewTab
"BookmarksView.Rename                               <F2>
"BookmarksView.RewriteBookmarkType
"BookmarksView.ShowPreview
"BookmarksView.SortGroupBookmarks
"BraceOrQuoteOut                                    <Tab>
"BreakOnUserUnhandledExceptions
"BreakpointActionsGroup
"BrowseSpecialPaths
"build
"BuildCurrentProject
"BuildMenu
"BuildOnlyCurrentProject
"BuildOnlyStartupProject
"BuildSelectedProjectWithoutDependencies
"BuildSelection
"BuildSelectionWithDiagnosticsAction
"BuildSolutionAction                                <M-S-B>
"BuildSolutionWithDiagnosticsAction
"BuildStartupProject
"BuildWholeSolutionAction
"CacheRecovery
"CallHierarchy                                      <A-S-H>
"CallHierarchy.BaseOnThisMethod                     <A-S-H>
"CallHierarchyPopupMenu
"CallSaul
"CancelBuildAction                                  <M-F9>
"CaptureCPUUsageData
"CaptureMemorySnapShot
"ChangeAttributeValueAction
"ChangeCodeStyleScheme
"ChangeColorScheme
"ChangeFileEncodingAction
"ChangeInspectionProfile
"ChangeKeymap
"ChangeLaf
"ChangeLineSeparators
"ChangeProjectContext
"ChangesBrowser.FiltererGroup
"ChangeScheme
"ChangeSignature                                    <M-F6>
"ChangeSplitOrientation                             <M-A-0>
"ChangesView.AddUnversioned                         <M-A-A>
"ChangesView.ApplyPatch
"ChangesView.ApplyPatchFromClipboard
"ChangesView.Browse
"ChangesView.Changelists
"ChangesView.CommitToolbar
"ChangesView.CreatePatch
"ChangesView.CreatePatchFromChanges
"ChangesView.CreatePatchToClipboard
"ChangesView.Diff
"ChangesView.Edit
"ChangesView.GroupBy
"ChangesView.GroupBy.Directory
"ChangesView.GroupBy.Repository
"ChangesView.Move
"ChangesView.NewChangeList
"ChangesView.Refresh
"ChangesView.RemoveChangeList
"ChangesView.RemoveDeleted
"ChangesView.Rename                                 <S-F6>
"ChangesView.Revert                                 <M-A-Z>
"ChangesView.RevertFiles
"ChangesView.SaveToShelve
"ChangesView.SetDefault
"ChangesView.Shelve
"ChangesView.ShelveSilently                         <M-S-H>
"ChangesView.ShowCommitOptions
"ChangesView.SingleClickPreview
"ChangesView.ToggleCommitUi
"ChangesView.UnshelveSilently                       <M-A-U>
"ChangesView.ViewOptions
"ChangesView.ViewOptions.ShowRelatedFiles
"ChangesViewPopupMenu
"ChangesViewToolbar
"ChangeTargetFramework
"ChangeTemplateDataLanguage
"ChangeView
"chart-demo
"CheckForUpdate
"CheckIgnoredAndNotExcludedDirectories
"CheckinFiles
"CheckinProject
"CheckStatusForFiles
"CheckSuggestedPlugins
"ChooseDebugConfiguration                           <A-C-D>
"ChooseRunConfiguration                             <M-;>
"ChooseRuntime
"CIDR.Debugger.AddWatchPoint
"CIDR.Debugger.CopyAddress                          <M-A-C> <M-K>
"CIDR.Debugger.DisableFilteringValues
"CIDR.Debugger.DisableValueRenderers
"CIDR.Debugger.EnableHexFormatting
"CIDR.Debugger.FramePresentation
"CIDR.Debugger.FramePresentation.Popup
"CIDR.Debugger.Frames.Tree.Popup
"CIDR.Debugger.JumpToDebuggerConsole                <M-S-F10>
"CIDR.Debugger.JumpToLine
"CIDR.Debugger.MuteVariables
"CIDR.Debugger.Settings.FramePresentation.Appender
"CIDR.Debugger.ShowFrameFunctionParameterTypes
"CIDR.Debugger.ShowFrameFunctionTemplateArguments
"CIDR.Debugger.ShowFrameModuleName
"CIDR.Debugger.ShowInMemoryView
"CIDR.Debugger.ShowMemoryViewInEditor
"CIDR.Debugger.ShowTypes
"CIDR.Debugger.ShowTypeTemplateArguments
"CIDR.Debugger.StripAuxiliaryNamespaces
"CIDR.Debugger.SugarizeCxxStlTypes
"CIDR.Debugger.ValueGroup.DataViewSettings
"CIDR.Debugger.ValueGroup.DataViewSettings.Popup
"CIDR.Debugger.ValueGroup.WatchExpressions
"CIDR.Debugger.ViewAsArray
"CIDR.Util.Diagnostics
"ClassNameCompletion                                <A-C- >
"CleanCurrentProject
"CleanOnlyCurrentProject
"CleanOnlyStartupProject
"CleanSelectedProjectWithoutDependencies
"CleanSelectionAction
"CleanSolutionAction
"CleanStartupProject
"ClearAllNotifications
"ClickLink                                          <F12> button=1 clickCount=1 modifiers=256 button=2 clickCount=1 modifiers=0 Force touch
"CloneCaretAboveWithVirtualSpace
"CloneCaretBelowWithVirtualSpace
"CloseActiveTab
"CloseAllEditors                                    <M-K>
"CloseAllEditorsButActive                           <M-A-T> <M-K>
"CloseAllNotifications
"CloseAllProjects
"CloseAllReadonly
"CloseAllToTheLeft
"CloseAllToTheRight
"CloseAllUnmodifiedEditors
"CloseAllUnpinnedEditors
"CloseContent                                       <M-W>
"CloseEditor
"CloseEditorsGroup
"CloseFirstNotification
"CloseGotItTooltip                                  <Esc>
"CloseOtherProjects
"CloseProject                                       <M-K> <M-S-W>
"CloudConfigAction
"CloudConfigActionGroup
"CloudConfigDisableAction
"CloudConfigPluginsAction
"CloudConfigSelfSettingsAction
"CloudConfigSilentlyAction
"CloudConfigUpdateApi
"ClusterArraysSettingAction
"CodeCleanup
"CodeCompletion                                     <M-I> <A-Esc> <C- >
"CodeCompletionGroup
"CodeEditorBaseGroup
"CodeEditorViewGroup
"CodeFormatGroup
"CodeInsightEditorActions
"CodeInspection.OnEditor
"CodeMenu
"CodeVision.ShowMore
"CollapseAll                                        <M-m>
"CollapseAllRegions                                 <M-K>
"CollapseBlock                                      <M-A-[> <M-K>
"CollapseDocComments                                <M-K>
"CollapseExpandableComponent                        <S-CR> <M-m>
"CollapseRegion                                     <M-A-[>
"CollapseRegionRecursively                          <M-K>
"CollapseSelection                                  <M-.>
"CollapseTreeNode                                   <m>
"CollapsiblePanel-toggle                            < >
"CollectBackendThreadDumps
"CollectZippedLogs
"com.intellij.database.actions.ToDatabaseScriptTranslationCopyAction
"com.intellij.database.actions.ToDatabaseScriptTranslationPreviewAction
"com.intellij.httpClient.actions.ConvertCurlToHttpRequestAction
"com.intellij.httpClient.microservices.actions.HttpGenerateRequestFromEndpointsAction
"com.intellij.ide.actions.searcheverywhere.ml.actions.OpenFeaturesInScratchFileAction <M-A-S-1>
"com.intellij.space.actions.SpaceLoginAction
"com.intellij.space.actions.SpaceLogoutAction
"com.intellij.space.vcs.actions.SpaceMainToolBarAction
"com.intellij.space.vcs.clone.SpaceCloneAction
"com.intellij.space.vcs.OpenChecklists
"com.intellij.space.vcs.OpenIssues
"com.intellij.space.vcs.review.create.SpaceCreateCommitSetReviewAction
"com.intellij.space.vcs.review.create.SpaceCreateMergeRequestAction
"com.intellij.space.vcs.review.details.SpaceReviewCheckoutBranchAction
"com.intellij.space.vcs.review.details.SpaceReviewUpdateBranchAction
"com.intellij.space.vcs.review.list.popup
"com.intellij.space.vcs.review.list.SpaceRefreshReviewsListAction
"com.intellij.space.vcs.review.list.SpaceReviewAuthorActionGroup
"com.intellij.space.vcs.review.list.SpaceReviewOpenInBrowserAction
"com.intellij.space.vcs.review.SpaceShowReviewsAction
"com.intellij.space.vcs.share.SpaceShareProjectAction
"com.intellij.space.vcs.SpaceCopyLinkActionGroup
"com.intellij.space.vcs.SpaceVcsOpenInBrowserActionGroup
"com.intellij.space.vcs.SpaceVcsRevealInActionGroup
"com.jetbrains.plugins.remotesdk.console.RunSshConsoleAction
"com.jetbrains.plugins.vagrant.actions.VagrantDestroyAction
"com.jetbrains.plugins.vagrant.actions.VagrantHaltAction
"com.jetbrains.plugins.vagrant.actions.VagrantInitInProjectAction
"com.jetbrains.plugins.vagrant.actions.VagrantProvisionAction
"com.jetbrains.plugins.vagrant.actions.VagrantReloadAction
"com.jetbrains.plugins.vagrant.actions.VagrantResumeAction
"com.jetbrains.plugins.vagrant.actions.VagrantShareAction
"com.jetbrains.plugins.vagrant.actions.VagrantSuspendAction
"com.jetbrains.plugins.vagrant.actions.VagrantUpAction
"com.jetbrains.rider.debugger.actions.RiderAttachToRemoteProcessAction
"com.jetbrains.rider.interactive.csi.SendToCSharpInteractive <M-\>
"com.jetbrains.rider.interactive.csi.StartCSharpInteractive
"com.jetbrains.rider.plugins.unity.actions.ShowFileInUnityAction
"com.jetbrains.rider.plugins.unity.actions.ShowFileInUnityFromExplorerAction
"CombinePropertiesFilesAction
"CommentByBlockComment                              <A-S-A>
"CommentByLineComment                               <M-K> <M-K> <M-/>
"CommentGroup
"CommittedChanges.Clear
"CommittedChanges.Details
"CommittedChanges.Filter
"CommittedChanges.Refresh
"CommittedChanges.Revert
"CommittedChangesToolbar
"CommitView.GearActions
"CommitView.ShowOnDoubleClick
"CommitView.ShowOnDoubleClick.EditorPreview
"CommitView.ShowOnDoubleClick.Source
"CommitView.SwitchToCommitDialog
"CompactListItemsAction
"compare.contents
"Compare.LastVersion
"Compare.SameVersion
"Compare.Selected
"Compare.Specified
"CompareActions
"CompareClipboardWithSelection                      <M-K>
"CompareDirs
"CompareFileWithEditor
"CompareTwoFiles
"CompileCoffeeScript
"CompileFile
"ComputeDiffWithPreviousRevisionAction
"ComputeSwaggerDiffBetweenPhysicalFiles
"ConfigureEditorTabs
"ConfigureIcs
"ConfigureProjectDependenciesAction
"ConfigureSoftWraps
"ConfigureSpecificationSources
"ConfigureSpecificationSourcesGroup
"Console.AggregateView.PopupGroup
"Console.DbmsOutput                                 <F9>
"Console.Dialect.SpecificGroup
"Console.EditorTableResult.Group
"Console.Execute                                    <CR>
"Console.Execute.Multiline
"Console.File.Resolve.Mode
"Console.History.Browse                             <M-A-E>
"Console.History.Next
"Console.History.Previous
"Console.HistoryActions
"Console.Jdbc.BrowseHistory                         <M-A-E>
"Console.Jdbc.Cancel                                <S-F5>
"Console.Jdbc.ChooseSchema
"Console.Jdbc.ChooseSession
"Console.Jdbc.Common
"Console.Jdbc.Debug
"Console.Jdbc.Execute
"Console.Jdbc.Execute.2
"Console.Jdbc.Execute.3
"Console.Jdbc.ExplainAnalyse
"Console.Jdbc.ExplainAnalyse.Raw
"Console.Jdbc.ExplainGroup
"Console.Jdbc.ExplainPlan
"Console.Jdbc.ExplainPlan.Raw
"Console.Jdbc.Left
"Console.Jdbc.Right
"Console.Jdbc.RunContextGroup
"Console.Jdbc.ToggleParameters
"Console.JdbcActions
"Console.Open                                       <M-S-F10>
"Console.SplitLine                                  <C-O>
"Console.TableResult.AddColumn                      <A-S-I>
"Console.TableResult.AddRow                         <C-CR>
"Console.TableResult.AggregateView
"Console.TableResult.CellEditor.Popup
"Console.TableResult.ChangeCellEditorFileEncoding
"Console.TableResult.ChangeCellEditorLanguage
"Console.TableResult.ChangeColumnLanguage
"Console.TableResult.ChangeIsolation
"Console.TableResult.ChangePageSize
"Console.TableResult.ChangeTableSample
"Console.TableResult.ChooseAggregators.Group
"Console.TableResult.ChooseExtractor
"Console.TableResult.ChooseExtractor.Group
"Console.TableResult.ClearCell
"Console.TableResult.CloneColumn                    <M-A-S-D>
"Console.TableResult.CloneRow
"Console.TableResult.ColumnActions
"Console.TableResult.ColumnDisplayTypeChange
"Console.TableResult.ColumnHeaderPopup
"Console.TableResult.ColumnsList
"Console.TableResult.ColumnSortAddAsc
"Console.TableResult.ColumnSortAddDesc
"Console.TableResult.ColumnSortAsc                  <A-Up>
"Console.TableResult.ColumnSortDesc                 <A-Down>
"Console.TableResult.ColumnSortingActions
"Console.TableResult.ColumnSortReset                <M-A-S-BS>
"Console.TableResult.ColumnVisibility               < >
"Console.TableResult.CompareCells
"Console.TableResult.CompareWith
"Console.TableResult.Copy.Csv.Settings
"Console.TableResult.Copy.Csv.Settings.ForExport
"Console.TableResult.CopyAggregatorResult           <M-A-C> <M-K>
"Console.TableResult.CopyColumnName
"Console.TableResult.CopyQueryToConsole
"Console.TableResult.CountRows
"Console.TableResult.Csv.PreviewColumnHeaderPopup
"Console.TableResult.Csv.PreviewPopupGroup
"Console.TableResult.Csv.SetFirstRowIsHeader
"Console.TableResult.Data
"Console.TableResult.DeleteColumns                  <A-S-Del>
"Console.TableResult.DeleteRows
"Console.TableResult.DisableAllAggregators
"Console.TableResult.EditFilterCriteria             <M-A-S-F>
"Console.TableResult.EditMaximized.Aggregates.Group
"Console.TableResult.EditMaximized.ChangeType
"Console.TableResult.EditMaximized.MoveToBottom
"Console.TableResult.EditMaximized.MoveToRight
"Console.TableResult.EditMaximized.ToggleFormattedMode
"Console.TableResult.EditMaximized.ToggleSoftWrap
"Console.TableResult.EditMaximized.Value.Group
"Console.TableResult.EditOrdering
"Console.TableResult.EditValue                      <CR>
"Console.TableResult.EditValueMaximized             <S-CR> <A-S-CR>
"Console.TableResult.EnableAllAggregators
"Console.TableResult.ExportToClipboard
"Console.TableResult.Filter.Custom
"Console.TableResult.FindInGrid                     <M-F>
"Console.TableResult.FirstPage
"Console.TableResult.GoToAggregatorsScriptsDirectory
"Console.TableResult.GoToExtractorsScriptsDirectory
"Console.TableResult.GoToGroup
"Console.TableResult.Group
"Console.TableResult.Group.Common
"Console.TableResult.Group.Secondary
"Console.TableResult.Header.ChangeColumnLanguage
"Console.TableResult.HideColumn
"Console.TableResult.HideEditMaximized              <M-J>
"Console.TableResult.HideOtherColumns
"Console.TableResult.ImportTable
"Console.TableResult.LastPage
"Console.TableResult.LoadFile
"Console.TableResult.MaximizeEditingCell            <M-A-S-M>
"Console.TableResult.NavigateAction                 <F4>
"Console.TableResult.NavigateExportedAction         <A-S-F12>
"Console.TableResult.NavigateForeignAction          <F12> button=1 clickCount=1 modifiers=256 button=2 clickCount=1 modifiers=0 Force touch
"Console.TableResult.NavigationAndEditing.Group
"Console.TableResult.NextPage
"Console.TableResult.Options
"Console.TableResult.PasteFormat
"Console.TableResult.PopupGroup
"Console.TableResult.PreviewDml
"Console.TableResult.PreviousPage
"Console.TableResult.Reload                         <M-R>
"Console.TableResult.RenameColumn
"Console.TableResult.RenameTab
"Console.TableResult.ResetView
"Console.TableResult.RevertSelected                 <M-A-Z>
"Console.TableResult.SaveLobAs
"Console.TableResult.SelectRow                      <S- >
"Console.TableResult.SetDefault                     <M-A-D>
"Console.TableResult.SetNull                        <M-A-N>
"Console.TableResult.ShowDumpDialogAction
"Console.TableResult.ShowQuery
"Console.TableResult.SkipComputedColumns
"Console.TableResult.SkipGeneratedColumns
"Console.TableResult.Submit
"Console.TableResult.SubmitAndCommit                <M-A-S-CR>
"Console.TableResult.ToggleFilterComponent
"Console.TableResult.ToggleFilters
"Console.TableResult.Transpose
"Console.TableResult.ViewAs
"Console.TableResult.ViewAsExtractor
"Console.TableResult.ViewAsTable
"Console.TableResult.ViewAsTreeTable
"Console.TabPopupGroup
"Console.TabPopupGroup.Embedded
"Console.Toggle.Notebook.Mode
"Console.Toggle.Shorten.Tab.Titles
"Console.Transaction
"Console.Transaction.Commit                         <M-A-S-CR>
"Console.Transaction.RevertAndRollback
"Console.Transaction.Rollback
"Console.Transaction.TxSettings
"ConsoleEditorPopupMenu
"ConsoleView.ClearAll
"ConsoleView.PopupMenu
"ConsoleView.ShowAsJsonAction
"context.clear                                      <A-S-X>
"context.load
"context.save
"ContextDebug
"ContextHelp                                        <M-S-F1>
"ContextRun
"ConvertContentsToAttributeAction
"ConvertIndentsGroup
"ConvertIndentsToSpaces
"ConvertIndentsToTabs
"ConvertSchemaAction
"ConvertToMacLineSeparators
"ConvertToUnixLineSeparators
"ConvertToWindowsLineSeparators
"Copy.Paste.Special
"CopyAbsolutePath                                   <M-A-C> <M-K>
"CopyAsPlainText
"CopyAsRichText
"CopyContentRootPath
"CopyElement
"CopyExternalReferenceGroup
"CopyFileName
"CopyFileReference
"CopyPathFromRepositoryRootProvider
"CopyPaths                                          <M-A-C> <M-K>
"CopyPathWithLineNumber
"CopyReference                                      <M-A-S-C>
"CopyReferencePopupGroup
"CopySettingsPath
"CopySourceRootPath
"CopyTBXReference
"CopyUrl
"Coverage
"CoverageMenu
"CoveragePlatformMenu
"CppIncludesHierarchy                               <A-S-H>
"CreateDesktopEntry
"CreateEditorConfigFile
"CreateLauncherScript
"CreateMissingFileAction
"CreateNewRunConfiguration
"CreateOpenapiSpecification
"CreateResourceBundle
"CreateRunConfiguration
"CreateVueSingleFileComp
"CSharpAutoNaming
"CSharpInteractive
"CustomizeUI
"CutCopyPasteGroup
"Database.EditorTabPopupMenu
"Database.KeymapGroup
"Database.KeymapGroup.Console.Toolbar
"Database.KeymapGroup.DataEditor
"Database.KeymapGroup.EditMaximized
"Database.KeymapGroup.EditMaximized.Aggregates
"Database.KeymapGroup.EditMaximized.Value
"Database.KeymapGroup.Execution
"Database.KeymapGroup.General
"Database.KeymapGroup.Hidden
"Database.KeymapGroup.Session
"Database.KeymapGroup.TableResult
"DatabaseView.AddActionGroup
"DatabaseView.AddActionGroupPopup
"DatabaseView.AddDataSourceFromPath
"DatabaseView.AddDataSourceFromThat
"DatabaseView.AddDataSourceFromUrl
"DatabaseView.AddDataSourceGroup
"DatabaseView.AddDataSourceHere
"DatabaseView.AddDriver
"DatabaseView.AddDriverAndDataSource
"DatabaseView.AddSchemasAction
"DatabaseView.AssignColor
"DatabaseView.BatchModifyIndices
"DatabaseView.Clipboard
"DatabaseView.Context.Templates
"DatabaseView.CopyAction
"DatabaseView.CopyDdlAction                         <M-A-S-G> <M-S-C>
"DatabaseView.CopyDdlFromDbAction
"DatabaseView.CopyTable
"DatabaseView.CreateDataSourceFromSettings
"DatabaseView.CreateDdlMapping
"DatabaseView.DataSourceCopyAction                  <M-C>
"DatabaseView.DataSourceCutAction                   <M-X> <S-Del>
"DatabaseView.DataSourcePasteAction                 <M-V>
"DatabaseView.Ddl.AddColumn
"DatabaseView.Ddl.AddForeignKey
"DatabaseView.Ddl.AddIndex
"DatabaseView.Ddl.AddObject
"DatabaseView.Ddl.AddPrimaryKey
"DatabaseView.Ddl.AddTable
"DatabaseView.Ddl.AlterObject                       <M-F6>
"DatabaseView.Ddl.BatchAddIndices
"DatabaseView.Ddl.CommentOnObject
"DatabaseView.Ddl.DropForeignKey
"DatabaseView.Ddl.DropPrimaryKey
"DatabaseView.Ddl.ModifyGrants
"DatabaseView.DdlMapping.Actions
"DatabaseView.DeactivateAction                      <S-F5>
"DatabaseView.DebugRoutine
"DatabaseView.Diagnostics
"DatabaseView.Diagnostics.DiagnosticRefresh
"DatabaseView.Diagnostics.DumpModel
"DatabaseView.Diagnostics.JdbcLog
"DatabaseView.Diagnostics.PrepareIntrospectionDiagnostic
"DatabaseView.Diagrams
"DatabaseView.DropAction                            <Del>
"DatabaseView.Dump.Native
"DatabaseView.DumpToConfiguredSqlDataSource
"DatabaseView.DumpToSqlDataSource
"DatabaseView.ExecuteRoutine
"DatabaseView.FilterAction
"DatabaseView.FindUsagesActionGroup
"DatabaseView.Fix
"DatabaseView.ForceRefresh                          <M-A-S-R>
"DatabaseView.ForgetSchemaAction
"DatabaseView.FullTextSearch                        <M-A-S-F>
"DatabaseView.GoToScriptsDirectory
"DatabaseView.HideSchemasAction
"DatabaseView.Import
"DatabaseView.ImportDataSources
"DatabaseView.ImportExport
"DatabaseView.ImportFromSql
"DatabaseView.LayoutSqlDataSource
"DatabaseView.LinkedDataSource.Actions
"DatabaseView.LinkedDataSource.ChooseDataSource
"DatabaseView.LinkedDataSource.ClearMapping
"DatabaseView.LinkedDataSource.CreateDataSource
"DatabaseView.LinkedDataSource.Navigate
"DatabaseView.MoveToGroup
"DatabaseView.Navigation.Actions
"DatabaseView.NewGroup
"DatabaseView.OpenDdlInConsole                      <M-A-S-B>
"DatabaseView.OpenFamilyAction                      <F4>
"DatabaseView.PropertiesAction
"DatabaseView.Refresh                               <M-R>
"DatabaseView.RefreshFragment
"DatabaseView.Restore.Native
"DatabaseView.RunExtensionScriptGroup
"DatabaseView.Scripted.Extensions
"DatabaseView.SetInheritedIntrospectionLevelAction
"DatabaseView.SetIntrospectionLevel1Action
"DatabaseView.SetIntrospectionLevel2Action
"DatabaseView.SetIntrospectionLevel3Action
"DatabaseView.SetIntrospectionLevelActions
"DatabaseView.ShowContentDiff
"DatabaseView.ShowDiff
"DatabaseView.ShowDiff.Configured
"DatabaseView.Sql.Scripts
"DatabaseView.SqlGenerator                          <M-A-G>
"DatabaseView.Tools                                 <M-.> <A-CR>
"DatabaseView.Tools.DisableConstraintsAction
"DatabaseView.Tools.EnableConstraintsAction
"DatabaseView.Tools.RecompileAction
"DatabaseView.Tools.RefreshMatViewAction
"DatabaseView.Tools.RevertChanges                   <M-A-Z>
"DatabaseView.Tools.ShowChanges
"DatabaseView.Tools.SubmitChanges
"DatabaseView.Tools.TruncateTableAction
"DatabaseViewPopupMenu
"DatabaseViewToolbar
"DataViews.Settings
"DDL.Editor.Regenerate
"DDL.Editor.Specific.StorageFile
"Debug                                              <F5>
"DebugClass                                         <C-S-D>
"DebugDump
"DebugExternalSources
"Debugger.AddInlineWatch
"Debugger.AddToWatch
"Debugger.CopyAllStacks
"Debugger.CopyStack
"Debugger.EvaluateInConsole
"Debugger.FocusOnBreakpoint
"Debugger.FocusOnFinish
"Debugger.MarkObject
"Debugger.RemoveAllBreakpoints
"Debugger.RemoveAllBreakpointsInFile
"Debugger.RestoreBreakpoint
"Debugger.ShowLibraryFrames
"Debugger.ShowReferring
"Debugger.Tree.EvaluateInConsole
"DebuggingActionsGroup
"DebugMainMenu
"DebugReloadGroup
"DebugT4Template
"DecompileAndShowIlViewerAction
"DecreaseColumnWidth                                <A-C-Left>
"DecrementWindowHeight                              <A-C-Up>
"DecrementWindowWidth                               <A-C-Left>
"DefaultProfilerExecutorGroupContextActionId
"DelegateMethods
"DeleteAttributeAction
"DeleteMnemonicFromBookmark
"DeleteOldAppDirs
"DeleteRecentFiles                                  <Del> <BS>
"DeleteTagAction
"DeploymentGroup.Basic
"DeploymentVcsActions
"DetachFolderAction
"DiagnoseReferenceAction
"DiagnosticGroup
"Diagram.AnalyzeGraph.AutoClustering
"Diagram.AnalyzeGraph.DropCentralityValues
"Diagram.AnalyzeGraph.DropClustering
"Diagram.AnalyzeGraph.DropFocus
"Diagram.AnalyzeGraph.FocusOnCycles
"Diagram.AnalyzeGraph.FocusOnNodeNeighbourhood
"Diagram.AnalyzeGraph.FocusOnPathsBetweenTwoNodes
"Diagram.AnalyzeGraph.FocusOnSelectedNodes
"Diagram.AnalyzeGraph.MeasureCentrality
"Diagram.AnalyzeGraph.ShowCharacteristics
"Diagram.AnalyzeGraphGroup
"Diagram.AppearanceGroup
"Diagram.CopyToClipboardGroup
"Diagram.CopyToClipboardGroup.Dot
"Diagram.CopyToClipboardGroup.DotWithPositions
"Diagram.CopyToClipboardGroup.Mermaid
"Diagram.CopyToClipboardGroup.Plantuml
"Diagram.DefaultGraphToolbar
"Diagram.DeleteSelection                            <Del> <BS>
"Diagram.DeselectAll                                <M-A-A>
"Diagram.ExportAndCopyGroup
"Diagram.ExportGroup
"Diagram.ExportToFileGroup
"Diagram.ExportToFileGroup.Dot
"Diagram.ExportToFileGroup.DotWithPositions
"Diagram.ExportToFileGroup.Graphml
"Diagram.ExportToFileGroup.Mermaid
"Diagram.ExportToFileGroup.Mxgraph
"Diagram.ExportToFileGroup.Plantuml
"Diagram.Layout.CustomLayouter
"Diagram.MergeEdgesGroup
"Diagram.OpenInOnlineEditorGroup
"Diagram.OpenInOnlineEditorGroup.Dot
"Diagram.OpenInOnlineEditorGroup.DotWithPositions
"Diagram.OpenInOnlineEditorGroup.Graphml
"Diagram.OpenInOnlineEditorGroup.Mermaid
"Diagram.OpenInOnlineEditorGroup.Mxgraph
"Diagram.OpenInOnlineEditorGroup.Plantuml
"Diagram.OpenSettings
"Diagram.RefreshDataModelManually
"Diagram.SearchItemOnWeb
"Diagram.SelectAll                                  <M-A>
"Diff.AppendLeftSide
"Diff.AppendRightSide
"Diff.ApplyLeftSide                                 <M-C-Right>
"Diff.ApplyNonConflicts
"Diff.ApplyNonConflicts.Left
"Diff.ApplyNonConflicts.Right
"Diff.ApplyRightSide                                <M-C-Left>
"Diff.Binary.Settings
"Diff.ComparePartial.Base.Left
"Diff.ComparePartial.Base.Right
"Diff.ComparePartial.Left.Right
"Diff.CompareWithBase.Left
"Diff.CompareWithBase.Result
"Diff.CompareWithBase.Right
"Diff.EditorGutterPopupMenu
"Diff.EditorGutterPopupMenu.EditorSettings
"Diff.EditorPopupMenu
"Diff.FocusOppositePane                             <C-S-Tab>
"Diff.FocusOppositePaneAndScroll
"Diff.IgnoreLeftSide
"Diff.IgnoreRightSide
"Diff.KeymapGroup
"Diff.MagicResolveConflicts
"Diff.NextChange                                    <C-S-Right>
"Diff.NextConflict
"Diff.PrevChange                                    <C-S-Left>
"Diff.PreviousConflict
"Diff.ResolveConflict
"Diff.ShowDiff
"Diff.ShowInExternalTool
"Diff.ShowSettingsPopup
"Diff.ShowStandaloneDiff
"Diff.ViewerPopupMenu
"Diff.ViewerToolbar
"DirDiffMenu
"DirDiffMenu.CancelComparingNewFilesWithEachOther
"DirDiffMenu.CompareNewFilesWithEachOtherAction
"DirDiffMenu.EnableEqual
"DirDiffMenu.EnableLeft
"DirDiffMenu.EnableNotEqual
"DirDiffMenu.EnableRight
"DirDiffMenu.MirrorToLeft
"DirDiffMenu.MirrorToRight
"DirDiffMenu.SetCopyToLeft
"DirDiffMenu.SetCopyToRight
"DirDiffMenu.SetDefault
"DirDiffMenu.SetDelete
"DirDiffMenu.SetNoOperation
"DirDiffMenu.SynchronizeDiff                        <CR>
"DirDiffMenu.SynchronizeDiff.All
"DirDiffMenu.WarnOnDeletion
"DirDiffOperationsMenu
"DisableCpp
"DisableInspection
"DissociateResourceBundleAction
"DocCommentGutterIconContextMenu
"Docker.AddDockerConnection
"Docker.AddDockerRegistry
"Docker.ComposeEditorGroup.SyncWithServiceView
"Docker.Filter
"Docker.FilterStoppedContainers
"Docker.FilterUntaggedImages
"Docker.RemoteServer.DisconnectServer
"Docker.RemoteServers.Attach2Container
"Docker.RemoteServers.CommitContainer
"Docker.RemoteServers.ComposeUp
"Docker.RemoteServers.ConnectServer                 <M-CR>
"Docker.RemoteServers.CopyContainerId
"Docker.RemoteServers.CopyContainerImageId
"Docker.RemoteServers.CopyImageId
"Docker.RemoteServers.CreateContainer
"Docker.RemoteServers.CreateNetwork
"Docker.RemoteServers.CreateTerminal
"Docker.RemoteServers.CreateVolume
"Docker.RemoteServers.DeleteConnection
"Docker.RemoteServers.DeleteContainer
"Docker.RemoteServers.DeleteFailedNode
"Docker.RemoteServers.DeleteImage
"Docker.RemoteServers.DeleteNetwork
"Docker.RemoteServers.DeleteService
"Docker.RemoteServers.DeleteVolume
"Docker.RemoteServers.DownComposeApp
"Docker.RemoteServers.ExecInContainer
"Docker.RemoteServers.InspectContainerOrImage
"Docker.RemoteServers.PauseContainer
"Docker.RemoteServers.Prune
"Docker.RemoteServers.PullImage
"Docker.RemoteServers.PushImage
"Docker.RemoteServers.Redeploy
"Docker.RemoteServers.RemoveOrphans
"Docker.RemoteServers.RestartComposeApp
"Docker.RemoteServers.RestartContainer
"Docker.RemoteServers.ScaleComposeService
"Docker.RemoteServers.SelectContainerImage
"Docker.RemoteServers.ShowContainerFiles
"Docker.RemoteServers.ShowContainerLog
"Docker.RemoteServers.ShowContainerProcesses
"Docker.RemoteServers.StartAllComposeApp            <M-CR>
"Docker.RemoteServers.StartComposeService           <M-CR>
"Docker.RemoteServers.StartContainer                <M-CR>
"Docker.RemoteServers.StopComposeApp                <S-F5>
"Docker.RemoteServers.StopComposeService            <S-F5>
"Docker.RemoteServers.StopContainer                 <S-F5>
"Docker.RemoteServers.StopDeploy                    <S-F5>
"Docker.RemoteServers.TransferImage
"Docker.RemoteServers.UnpauseContainer
"Docker.RemoteServersViewPopup
"Docker.RemoteServersViewPopup.Image
"Docker.RemoteServersViewToolbar
"Docker.RemoteServersViewToolbar.Top
"DockPinnedMode
"DockToolWindow
"DockUnpinnedMode
"Document2XSD
"Documentation.Back                                 <C--> button=4 clickCount=1 modifiers=0
"Documentation.EditSource                           <F4>
"Documentation.Forward                              <C-S-->
"Documentation.KeepTab
"Documentation.Navigation
"Documentation.PrimaryGroup
"Documentation.ToggleAutoShow
"Documentation.ToggleAutoUpdate
"Documentation.ToggleShowInPopup
"Documentation.ViewExternal                         <S-F1>
"DomCollectionControl
"DomCollectionControl.Add                           <Ins>
"DomCollectionControl.Edit                          <F4>
"DomCollectionControl.Remove                        <Del> <BS>
"DomElementsTreeView.AddElement                     <Ins>
"DomElementsTreeView.AddElementGroup
"DomElementsTreeView.DeleteElement                  <Del> <BS>
"DomElementsTreeView.GotoDomElementDeclarationAction <F4>
"DomElementsTreeView.TreePopup
"DumpFocusableComponentHierarchyAction
"DumpLookupElementWeights                           <M-A-S-W>
"DumpMLCompletionFeatures                           <M-A-S-0>
"Dvcs.FileHistory.ContextMenu
"Dvcs.Log.ContextMenu
"Dvcs.Log.Toolbar
"EditBookmark
"EditBookmarksGroup
"EditBreakpoint                                     <M-S-F8>
"EditCommitMessage
"EditCreateDeleteGroup
"EditCustomProperties
"EditCustomVmOptions
"EditFavorites
"EditInspectionSettings
"EditMacros
"EditMenu
"Editor.JSLibrariesMenu
"Editor.JSLibrariesMenu.LibraryList
"EditorActions
"EditorAddCaretPerSelectedLine                      <A-S-I>
"EditorAddOrRemoveCaret                             button=1 clickCount=1 modifiers=512
"EditorAddRectangularSelectionOnMouseDrag           button=1 clickCount=1 modifiers=832
"EditorBackSpace                                    <BS> <S-BS>
"EditorBackwardParagraph
"EditorBackwardParagraphWithSelection
"EditorBidiTextDirection
"EditorBreadcrumbsHideBoth
"EditorBreadcrumbsSettings
"EditorBreadcrumbsShowAbove
"EditorBreadcrumbsShowBelow
"EditorChooseLookupItem                             <CR>
"EditorChooseLookupItemCompleteStatement
"EditorChooseLookupItemDot
"EditorChooseLookupItemReplace                      <Tab>
"EditorCloneCaretAbove                              <M-A-S-Up> <M-A-Up>
"EditorCloneCaretBelow                              <M-A-S-Down> <M-A-Down>
"EditorCodeBlockEnd
"EditorCodeBlockEndWithSelection                    <M-A-S-]>
"EditorCodeBlockStart
"EditorCodeBlockStartWithSelection                  <M-A-S-[>
"EditorCompleteStatement
"EditorContextBarMenu
"EditorContextInfo                                  <C-S-Q>
"EditorCopy                                         <M-C>
"EditorCreateRectangularSelection                   button=1 clickCount=1 modifiers=576
"EditorCreateRectangularSelectionOnMouseDrag        button=1 clickCount=1 modifiers=576
"EditorCut                                          <M-X> <S-Del>
"EditorCutLineBackward
"EditorCutLineEnd
"EditorDecreaseFontSize                             <M-->
"EditorDecreaseFontSizeGlobal                       <C-S-,>
"EditorDelete                                       <Del> <BS>
"EditorDeleteLine                                   <M-S-K>
"EditorDeleteToLineEnd                              <C-K> <M-Del>
"EditorDeleteToLineStart                            <M-BS>
"EditorDeleteToWordEnd                              <A-Del>
"EditorDeleteToWordEndInDifferentHumpsMode
"EditorDeleteToWordStart                            <A-BS>
"EditorDeleteToWordStartInDifferentHumpsMode
"EditorDown                                         <Down> <C-N>
"EditorDownWithSelection                            <S-Down>
"EditorDuplicate                                    <A-S-Down>
"EditorDuplicateLines
"EditorEnter                                        <CR>
"EditorEscape                                       <Esc>
"EditorFocusGutter                                  <A-S-6>
"EditorForwardParagraph
"EditorForwardParagraphWithSelection
"EditorGutterPopupMenu
"EditorGutterToggleGlobalIndentLines
"EditorGutterToggleGlobalLineNumbers
"EditorGutterVcsPopupMenu
"EditorHungryBackSpace
"EditorIncreaseFontSize                             <M-=>
"EditorIncreaseFontSizeGlobal                       <C-S-.>
"EditorIndentLineOrSelection                        <M-]>
"EditorIndentSelection                              <Tab>
"EditorJoinLines                                    <C-J>
"EditorKillRegion
"EditorKillRingSave
"EditorKillToWordEnd
"EditorKillToWordStart
"EditorLangPopupMenu
"EditorLeft                                         <Left> <C-B>
"EditorLeftWithSelection                            <S-Left>
"EditorLineEnd                                      <M-Right>
"EditorLineEndWithSelection                         <S-End> <M-S-Right>
"EditorLineStart                                    <M-Left>
"EditorLineStartWithSelection                       <S-Home> <M-S-Left>
"EditorLookupDown
"EditorLookupSelectionDown
"EditorLookupSelectionUp
"EditorLookupUp
"EditorMatchBrace                                   <M-S-\>
"EditorMoveDownAndScroll
"EditorMoveDownAndScrollWithSelection
"EditorMoveToPageBottom
"EditorMoveToPageBottomWithSelection                <M-S-Pagedown>
"EditorMoveToPageTop
"EditorMoveToPageTopWithSelection                   <M-S-Pageup>
"EditorMoveUpAndScroll
"EditorMoveUpAndScrollWithSelection
"EditorNextWord                                     <A-Right>
"EditorNextWordInDifferentHumpsMode
"EditorNextWordInDifferentHumpsModeWithSelection
"EditorNextWordWithSelection                        <A-S-Right> <A-C-S-F>
"EditorPageDown                                     <Pagedown>
"EditorPageDownWithSelection                        <S-Pagedown>
"EditorPageUp                                       <Pageup>
"EditorPageUpWithSelection                          <S-Pageup>
"EditorPaste                                        <M-V>
"EditorPasteFromX11                                 button=2 clickCount=1 modifiers=0
"EditorPasteSimple                                  <M-A-S-V>
"EditorPopupMenu
"EditorPopupMenu.GoTo
"EditorPopupMenu.Run
"EditorPopupMenu.Run.Rider
"EditorPopupMenu1
"EditorPopupMenu1.FindRefactor
"EditorPopupMenu1.RiderSection
"EditorPopupMenu2
"EditorPopupMenu3
"EditorPopupMenuDebug
"EditorPreviousWord                                 <A-Left>
"EditorPreviousWordInDifferentHumpsMode
"EditorPreviousWordInDifferentHumpsModeWithSelection
"EditorPreviousWordWithSelection                    <A-S-Left> <A-C-S-B>
"EditorResetFontSize
"EditorReverseLines
"EditorRight                                        <Right> <C-F>
"EditorRightWithSelection                           <S-Right>
"EditorScrollBottom
"EditorScrollDown                                   <C-Pagedown>
"EditorScrollDownAndMove
"EditorScrollLeft
"EditorScrollRight
"EditorScrollToCenter                               <C-L>
"EditorScrollTop
"EditorScrollUp                                     <C-Pageup>
"EditorScrollUpAndMove
"EditorSearchSession.NextOccurrenceAction
"EditorSearchSession.PrevOccurrence
"EditorSearchSession.ToggleMatchCase
"EditorSearchSession.ToggleRegex
"EditorSearchSession.ToggleWholeWordsOnlyAction
"EditorSelectLine                                   <M-L>
"EditorSelectSingleLineAtCaret
"EditorSelectWord                                   <M-C-S-Right> <C-S-Right>
"EditorSetContentBasedBidiTextDirection
"EditorSetLtrBidiTextDirection
"EditorSetRtlBidiTextDirection
"EditorShowGutterIconTooltip                        <A-S-6>
"EditorSortLines
"EditorSplitLine                                    <C-O>
"EditorStartNewLine                                 <M-CR>
"EditorStartNewLineBefore                           <M-S-CR>
"EditorSwapSelectionBoundaries
"EditorTab                                          <Tab>
"EditorTabActionGroup
"EditorTabPopupMenu
"EditorTabPopupMenuEx
"EditorTabsEntryPoint
"EditorTabsGroup
"EditorTextEnd                                      <M-Down>
"EditorTextEndWithSelection                         <M-S-End>
"EditorTextStart                                    <M-Up>
"EditorTextStartWithSelection                       <M-S-Home>
"EditorToggleActions
"EditorToggleCase
"EditorToggleColumnMode                             <A-S-I>
"EditorToggleInsertState
"EditorToggleShowBreadcrumbs
"EditorToggleShowGutterIcons
"EditorToggleShowIndentLines
"EditorToggleShowLineNumbers
"EditorToggleShowWhitespaces
"EditorToggleStickySelection
"EditorToggleUseSoftWraps                           <A-Z>
"EditorToggleUseSoftWrapsInPreview
"EditorToggleVisualFormattingLayer
"EditorTranspose                                    <C-T>
"EditorUnindentSelection                            <M-[> <S-Tab>
"EditorUnSelectWord                                 <M-C-S-Left>
"EditorUp                                           <Up> <C-P>
"EditorUpWithSelection                              <S-Up>
"EditPropertiesAction                               <M-.> <A-CR>
"editRunConfigurations
"EditSelectGroup
"EditSelectWordGroup
"EditSmartGroup
"EditSolutionFilterAction
"EditSource                                         <F4>
"EditSourceInNewWindow                              <M-K>
"EditSourceNotInEditor
"EditWebReferenceAction
"EmacsStyleIndent
"Emmet
"EmmetNextEditPoint                                 <A-C-Right>
"EmmetPreview
"EmmetPreviousEditPoint                             <A-C-Left>
"EmmetUpdateTag
"EmojiAndSymbols                                    <M-C- >
"EnableDaemon                                       <M-A-S-8> <A-C-S-8>
"EnableDesignTimeBuildLogging
"EnableDockerSupportAction
"EnablePackageJsonMismatchedDependenciesNotification
"EncodingPanelActions
"EndpointsActions.ContextMenu
"EndpointsActions.FilterToolbar
"EndpointsActions.OptionsMenu
"EndpointsActions.Title
"EntityFramework.AddMigration
"EntityFramework.EnableMigrations
"EntityFramework.GetMigrations
"EntityFramework.InitialSetup
"EntityFramework.UpdateDatabase
"ES6.Generate.Index
"EscapeEntities
"EslintImportCodeStyle
"EvaluateExpression
"ExcludeAction
"ExecuteT4Template
"Exit                                               <M-Q>
"ExpandAll                                          <M-k>
"ExpandAllRegions                                   <M-K>
"ExpandAllToLevel
"ExpandAllToLevel1                                  <M-A-j> <M-A-j>
"ExpandAllToLevel2                                  <M-A-j> <M-A-j>
"ExpandAllToLevel3                                  <M-A-j> <M-A-j>
"ExpandAllToLevel4                                  <M-A-j> <M-A-j>
"ExpandAllToLevel5                                  <M-A-j> <M-A-j>
"ExpandDocComments
"ExpandExpandableComponent                          <S-CR> <M-k>
"ExpandLiveTemplateByTab                            <Tab>
"ExpandLiveTemplateCustom
"ExpandRegion                                       <M-A-]>
"ExpandRegionRecursively                            <M-K>
"ExpandToLevel
"ExpandToLevel1                                     <M-j> <M-j>
"ExpandToLevel2                                     <M-j> <M-j>
"ExpandToLevel3                                     <M-j> <M-j>
"ExpandToLevel4                                     <M-j> <M-j>
"ExpandToLevel5                                     <M-j> <M-j>
"ExpandTreeNode                                     <k>
"ExperimentalToolbarActions
"ExportImportGroup
"ExportSettings
"ExportTestResults
"ExportToHTML
"ExportToTextFile
"ExpressionTypeInfo                                 <C-S-P>
"ExternalJavaDoc                                    <S-F1>
"ExternalSystem.Actions
"ExternalSystem.AfterCompile
"ExternalSystem.AfterRebuild
"ExternalSystem.AfterSync
"ExternalSystem.AssignRunConfigurationShortcut
"ExternalSystem.AssignShortcut
"ExternalSystem.BeforeCompile
"ExternalSystem.BeforeRebuild
"ExternalSystem.BeforeRun
"ExternalSystem.BeforeSync
"ExternalSystem.CollapseAll                         <M-m>
"ExternalSystem.CreateRunConfiguration
"ExternalSystem.DependencyAnalyzer.DependencyListGroup
"ExternalSystem.DependencyAnalyzer.DependencyTreeGroup
"ExternalSystem.DependencyAnalyzer.UsagesTreeGroup
"ExternalSystem.DetachProject                       <Del> <BS>
"ExternalSystem.EditRunConfiguration
"ExternalSystem.ExpandAll                           <M-k>
"ExternalSystem.GroupModules
"ExternalSystem.GroupTasks
"ExternalSystem.HideProjectRefreshAction
"ExternalSystem.IgnoreProject
"ExternalSystem.OpenConfig                          <F4>
"ExternalSystem.OpenTasksActivationManager
"ExternalSystem.ProjectRefreshAction                <M-S-I>
"ExternalSystem.ProjectRefreshActionGroup
"ExternalSystem.RefreshAllProjects
"ExternalSystem.RefreshProject
"ExternalSystem.RemoveRunConfiguration
"ExternalSystem.RunTask
"ExternalSystem.SelectProjectDataToImport
"ExternalSystem.ShowCommonSettings
"ExternalSystem.ShowIgnored
"ExternalSystem.ShowInheritedTasks
"ExternalSystem.ShowSettings
"ExternalSystem.ShowSettingsGroup
"ExternalSystemView.ActionsToolbar
"ExternalSystemView.ActionsToolbar.CenterPanel
"ExternalSystemView.ActionsToolbar.LeftPanel
"ExternalSystemView.ActionsToolbar.RightPanel
"ExternalSystemView.BaseProjectMenu
"ExternalSystemView.DependencyMenu
"ExternalSystemView.ModuleMenu
"ExternalSystemView.ProjectMenu
"ExternalSystemView.RunConfigurationMenu
"ExternalSystemView.TaskActivationGroup
"ExternalSystemView.TaskMenu
"ExternalToolsGroup
"ExtractClass
"ExtractInclude
"ExtractInterface
"ExtractMethod                                      <M-A-M>
"ExtractMethodToolWindow.TreePopup
"ExtractModule
"ExtractSuperclass
"FavoritesViewPopupMenu
"FileChooser.Delete                                 <Del> <BS>
"FileChooser.GotoDesktop
"FileChooser.GotoHome                               <M-1>
"FileChooser.GotoProject                            <M-2>
"FileChooser.GoToWslHome
"FileChooser.LightEditGotoOpenedFile
"FileChooser.NewFile                                <M-N>
"FileChooser.NewFolder
"FileChooser.Refresh                                <M-A-Y>
"FileChooser.ShowHidden
"FileChooser.TogglePathBar
"FileChooserList
"FileChooserList.LevelUp                            <M-Up>
"FileChooserList.Root                               <M-/>
"FileChooserToolbar
"FileEditor.ImportToDatabase
"FileEditor.ImportToDatabase.Group
"FileEditor.OpenDataEditor
"FileExportGroup
"FileHistory.AnnotateRevision
"FileHistory.KeymapGroup
"FileMainSettingsGroup
"FileMenu
"FileOpenGroup
"FileOtherSettingsGroup
"FilePropertiesGroup
"FileSettingsGroup
"FileStructurePopup                                 <M-A-O> <M-S-O>
"FileTemplateSeparatorGroup
"FileWatcher.runForFiles
"FillParagraph
"Find                                               <M-F>
"FindDependantCodeAction
"FindDependantCodeInSolutionAction
"FindInPath                                         <M-S-F>
"FindMenuGroup
"FindNext                                           <M-G> <F3> <M-K>
"FindPrevious                                       <M-S-G> <S-F3> <M-S-F5>
"FindPrevWordAtCaret
"FindSelectionInPath
"FindUsages                                         <A-S-F12>
"FindUsagesInFile                                   <M-F7>
"FindUsagesMenuGroup
"FindWordAtCaret
"FixDocComment
"FixWSLFirewall
"FlattenHierarchySettingAction
"FloatMode
"FlowJS.Restart.All.Servers
"FlowJSShowErrorDetailsAction
"FocusEditor                                        <Esc>
"FoldingGroup
"fontEditorPreview.ToggleBoldFont
"ForceRefresh                                       <M-A-S-R>
"ForceRunToCursor                                   <M-A-F9>
"ForceStepInto                                      <A-S-F7>
"ForceStepOver
"Forward                                            <C-S-->
"FullyExpandTreeNode                                <j>
"Generate                                           <C-CR>
"Generate.Constructor.JavaScript
"Generate.GetAccessor.JavaScript
"Generate.GetSetAccessor.JavaScript
"Generate.Missing.Members.ES6                       <C-I>
"Generate.Missing.Members.TypeScript                <C-I>
"Generate.SetAccessor.JavaScript
"GenerateCoverageReport
"GenerateDbObjectGroup
"GenerateDTD
"GenerateFromTestCreatorsGroup
"GenerateGroup
"GenerateLaunchSettings
"GeneratePattern
"GenerateXmlTag
"Git.Add                                            <M-A-A>
"Git.Branch
"Git.Branches
"Git.Branches.List
"Git.BranchOperationGroup
"Git.BrowseRepoAtRevision
"Git.ChangesView.AcceptTheirs
"Git.ChangesView.AcceptYours
"Git.ChangesView.Conflicts
"Git.ChangesView.Merge
"Git.Checkout.Branch
"Git.CheckoutGroup
"Git.CheckoutRevision
"Git.CherryPick.Abort
"Git.Clone
"Git.Commit.And.Push.Executor                       <M-A-K>
"Git.Commit.Stage
"Git.CompareWithBranch
"Git.Configure.Remotes
"Git.ContextMenu
"Git.CreateNewBranch
"Git.CreateNewTag
"Git.Drop.Commits
"Git.Experimental.Branch.Popup.Actions
"Git.Fetch
"Git.FileActions
"Git.FileHistory.ContextMenu
"Git.Fixup.To.Commit
"Git.Ignore.File
"Git.Init
"Git.Interactive.Rebase
"Git.Log
"Git.Log.Branches.Change.Branch.Filter              button=1 clickCount=2 modifiers=0 <CR>
"Git.Log.Branches.Change.Branch.Filter.On.Selection
"Git.Log.Branches.GroupBy.Directory
"Git.Log.Branches.GroupBy.Repository
"Git.Log.Branches.Grouping.Settings
"Git.Log.Branches.Navigate.Log.To.Branch.On.Selection
"Git.Log.Branches.Navigate.Log.To.Selected.Branch   <A-F1>
"Git.Log.Branches.Settings
"Git.Log.ContextMenu
"Git.Log.ContextMenu.CheckoutBrowse
"Git.Log.DeepCompare
"Git.Log.Hide.Branches
"Git.Log.Toolbar
"Git.LogContextMenu
"Git.MainMenu
"Git.MainMenu.FileActions
"Git.MainMenu.LocalChanges
"Git.MainMenu.MergeActions
"Git.MainMenu.RebaseActions
"Git.Menu
"Git.Merge
"Git.Merge.Abort
"Git.Ongoing.Rebase.Actions
"Git.OpenExcludeFile
"Git.Pull
"Git.PushUpToCommit
"Git.Rebase
"Git.Rebase.Abort
"Git.Rebase.Continue
"Git.Rebase.Skip
"Git.Rename.Local.Branch                            <F2> <S-F6>
"Git.Reset
"Git.Reset.In.Log
"Git.ResolveConflicts
"Git.Revert.Abort
"Git.Revert.In.Log
"Git.Reword.Commit                                  <S-F6>
"Git.SelectInGitLog
"Git.Show.Stage
"Git.Show.Stash
"Git.ShowBranches
"Git.Squash.Commits
"Git.Squash.Into.Commit
"Git.Stage.AcceptTheirs
"Git.Stage.AcceptYours
"Git.Stage.Add                                      <M-A-A>
"Git.Stage.Add.All
"Git.Stage.Add.Tracked
"Git.Stage.Compare.Local.Staged
"Git.Stage.Compare.Staged.Head
"Git.Stage.Compare.Staged.Local
"Git.Stage.Compare.Three.Versions
"Git.Stage.Index.File.Menu
"Git.Stage.Local.File.Menu
"Git.Stage.Merge
"Git.Stage.Reset                                    <M-A-Z>
"Git.Stage.Revert                                   <M-A-Z>
"Git.Stage.Show.Local
"Git.Stage.Show.Staged
"Git.Stage.ThreeSideDiff
"Git.Stage.ToggleIgnored
"Git.Stage.Toolbar
"Git.Stage.Tree.Menu
"Git.Stage.Ui.Settings
"Git.Stash
"Git.Stash.Apply
"Git.Stash.ChangesBrowser.ContextMenu
"Git.Stash.Drop                                     <Del> <BS>
"Git.Stash.Operations.ContextMenu
"Git.Stash.Pop
"Git.Stash.Refresh
"Git.Stash.Silently
"Git.Stash.UnstashAs
"Git.Tag
"Git.Toolbar.ShowMoreActions
"Git.Uncommit
"Git.Unstash
"GitCheckoutAction
"GitCheckoutAsNewBranch
"GitCheckoutFromInputAction
"GitCheckoutWithRebaseAction
"GitCompareWithBranchAction
"GitDeleteBranchAction
"Github.Accounts.AddAccount
"Github.Accounts.AddGHAccount
"Github.Accounts.AddGHAccountWithToken
"Github.Accounts.AddGHEAccount
"Github.Create.Gist
"Github.Create.Pull.Request
"GitHub.MainMenu
"Github.Open.In.Browser
"Github.PullRequest.Branch.Create
"Github.PullRequest.Branch.Update
"Github.PullRequest.Changes.MarkNotViewed
"Github.PullRequest.Changes.MarkViewed
"Github.PullRequest.Changes.Popup
"Github.PullRequest.Changes.Reload                  <M-R>
"Github.PullRequest.Changes.Toolbar
"Github.PullRequest.Comments.Reload                 <M-R>
"Github.PullRequest.Details.Popup
"Github.PullRequest.Details.Reload                  <M-R>
"Github.PullRequest.Diff.Comment.Create             <M-S-X>
"Github.PullRequest.List.Reload                     <M-R>
"Github.PullRequest.Review.Submit
"Github.PullRequest.Show
"Github.PullRequest.Timeline.Popup
"Github.PullRequest.Timeline.Show
"Github.PullRequest.Timeline.Update                 <M-R>
"Github.PullRequest.ToolWindow.List.Popup
"Github.Share
"Github.Sync.Fork
"Github.View.Pull.Request
"GithubCopyPathProvider
"GitMergeBranchAction
"GitNewBranchAction
"GitPullBranchAction$WithMerge
"GitPullBranchAction$WithRebase
"GitPushBranchAction
"GitRebaseBranchAction
"GitRenameBranchAction
"GitRepositoryActions
"GitShowDiffWithBranchAction
"GitUpdateSelectedBranchAction
"GotoAction                                         <F1> <M-S-P> <M-S-A>
"GotoBookmark0                                      <C-0>
"GotoBookmark1                                      <C-1>
"GotoBookmark2                                      <C-2>
"GotoBookmark3                                      <C-3>
"GotoBookmark4                                      <C-4>
"GotoBookmark5                                      <C-5>
"GotoBookmark6                                      <C-6>
"GotoBookmark7                                      <C-7>
"GotoBookmark8                                      <C-8>
"GotoBookmark9                                      <C-9>
"GotoBookmarkA
"GotoBookmarkB
"GotoBookmarkC
"GotoBookmarkD
"GotoBookmarkE
"GotoBookmarkF
"GotoBookmarkG
"GotoBookmarkH
"GotoBookmarkI
"GotoBookmarkJ
"GotoBookmarkK
"GotoBookmarkL
"GotoBookmarkM
"GotoBookmarkN
"GotoBookmarkO
"GotoBookmarkP
"GotoBookmarkQ
"GotoBookmarkR
"GotoBookmarkS
"GotoBookmarkT
"GotoBookmarkU
"GotoBookmarkV
"GotoBookmarkW
"GotoBookmarkX
"GotoBookmarkY
"GotoBookmarkZ
"GotoChangedFile
"GoToChangeMarkerGroup
"GotoClass
"GoToCodeGroup
"GotoCustomRegion                                   <M-A-.>
"GotoDatabaseObject
"GotoDeclaration                                    <F12> button=1 clickCount=1 modifiers=256 button=2 clickCount=1 modifiers=0 Force touch
"GotoDeclarationOnly
"GoToEditPointGroup
"GoToErrorGroup
"GotoFile                                           <M-P>
"GotoImplementation                                 <M-F12>
"GoToLastTab
"GotoLine                                           <C-G>
"GoToLinkTarget
"GoToMenu
"GotoNextBookmark
"GotoNextBookmarkInEditor
"GotoNextElementUnderCaretUsage                     <A-C-Down>
"GotoNextError                                      <A-F8>
"GotoPrevElementUnderCaretUsage                     <A-C-Up>
"GotoPreviousBookmark
"GotoPreviousBookmarkInEditor
"GotoPreviousError                                  <S-F8> <A-S-F8>
"GotoRelated                                        <M-C-Up>
"GotoRow                                            <C-G>
"GotoSuperMethod
"GotoSymbol                                         <M-T> <M-S-O>
"GoToTab1
"GoToTab2
"GoToTab3
"GoToTab4
"GoToTab5
"GoToTab6
"GoToTab7
"GoToTab8
"GoToTab9
"GoToTargetEx
"GotoTest
"GotoTypeDeclaration                                <C-S-B> button=1 clickCount=1 modifiers=320
"GotoUrlAction                                      <M-S-\>
"Graph.ActualSize                                   <M-o> <M-/>
"Graph.AlignNodes.Bottom                            <S-B>
"Graph.AlignNodes.Center                            <S-C>
"Graph.AlignNodes.Left                              <S-L>
"Graph.AlignNodes.Middle                            <S-M>
"Graph.AlignNodes.Right                             <S-R>
"Graph.AlignNodes.Top                               <S-T>
"Graph.AlignNodesGroup
"Graph.AppearanceGroup
"Graph.ApplyCurrentLayout                           <S-F5>
"Graph.BehaviourGroup
"Graph.CommonLayoutGroup
"Graph.CopyDiagramSelectionToClipboard
"Graph.CopyEntireDiagramToClipboard
"Graph.Current.Node.Dependencies.Filter
"Graph.DefaultGraphPopup
"Graph.DefaultGraphToolbar
"Graph.DistributeNodes.Horizontally                 <S-H>
"Graph.DistributeNodes.Vertically                   <S-V>
"Graph.DistributeNodesGroup
"Graph.EdgeRealizer.ArcEdgeRealizer
"Graph.EdgeRealizer.BezierEdgeRealizer
"Graph.EdgeRealizer.QuadCurveEdgeRealizer
"Graph.EdgeRealizer.SmoothedPolylineEdgeRealizer
"Graph.EdgeRealizer.SplineEdgeRealizer
"Graph.EdgeRealizer.StraightPolylineEdgeRealizer
"Graph.EdgeRealizerGroup
"Graph.ExportGroup
"Graph.ExportToFile
"Graph.FitContent
"Graph.Layout.ARTreeLayouter
"Graph.Layout.BalloonEdgeBundledLayouter
"Graph.Layout.BalloonLayouter
"Graph.Layout.ChannelLayouter
"Graph.Layout.CircularEdgeBundledLayouter
"Graph.Layout.CircularLayouter
"Graph.Layout.CompactOrthogonalLayouter
"Graph.Layout.FamilyLayouter
"Graph.Layout.Fit.Content
"Graph.Layout.GenericLayouter
"Graph.Layout.HierarchicGroupLayouter
"Graph.Layout.HierarchicLayouter
"Graph.Layout.HVTreeLayouter
"Graph.Layout.OrganicEdgeBundledLayouter
"Graph.Layout.OrganicLayouter
"Graph.Layout.OrthogonalGroupLayouter
"Graph.Layout.RadialEdgeBundledLayouter
"Graph.Layout.RadialLayouter
"Graph.Layout.RandomLayouter
"Graph.Layout.SeriesParallelLayouter
"Graph.Layout.SingleCycleLayouter
"Graph.LayoutOrientation.BottomToTop
"Graph.LayoutOrientation.LeftToRight
"Graph.LayoutOrientation.RightToLeft
"Graph.LayoutOrientation.TopToBottom
"Graph.LayoutOrientationGroup
"Graph.MergeEdges.BySources
"Graph.MergeEdges.ByTargets
"Graph.MergeEdgesGroup
"Graph.NeighborhoodViewPopup
"Graph.NeighborhoodViewPopup.AppearanceGroup
"Graph.NeighborhoodViewPopup.CompactMode
"Graph.NeighborhoodViewPopup.LayoutGroup
"Graph.NeighborhoodViewPopup.SameAsModelLayouter
"Graph.NetsLayoutGroup
"Graph.OrthogonalLayoutGroup
"Graph.RadialLayoutGroup
"Graph.RouteEdges                                   <F5>
"Graph.Show.Bridges
"Graph.Show.Edge.Labels
"Graph.ShowHideGrid
"Graph.ShowStructureViewForSelectedNode
"Graph.SnapToGrid
"Graph.TreeLayoutGroup
"Graph.ZoomIn
"Graph.ZoomOut
"GridGeoViewer
"GroupNonPublicMembersSettingAction
"GuidGenerator
"Help.JetBrainsTV
"Help.KeymapReference                               <M-K>
"HelpDiagnosticTools
"HelpMenu
"HelpTopics
"Hg.Commit.And.Push.Executor                        <M-A-K>
"Hg.Ignore.File
"Hg.Init
"Hg.Log.ContextMenu
"Hg.Mq
"Hg.MQ.Unapplied
"hg4idea.add                                        <M-A-A>
"hg4idea.branches
"hg4idea.CompareWithBranch
"hg4idea.CreateNewBranch
"hg4idea.CreateNewTag
"hg4idea.file.menu
"hg4idea.Graft.Continue
"hg4idea.merge.files
"hg4idea.MergeWithRevision
"hg4idea.mq.ShowUnAppliedPatches
"hg4idea.pull
"hg4idea.QDelete                                    <Del> <BS>
"hg4idea.QFinish
"hg4idea.QFold                                      <A-S-D>
"hg4idea.QGoto
"hg4idea.QGotoFromPatches                           <A-S-G>
"hg4idea.QImport
"hg4idea.QPushAction                                <A-S-P>
"hg4idea.QRefresh                                   <M-R>
"hg4idea.QRename
"hg4idea.Rebase.Abort
"hg4idea.Rebase.Continue
"hg4idea.resolve.mark
"hg4idea.run.conflict.resolver
"hg4idea.tag
"hg4idea.updateTo
"hg4idea.UpdateToRevision
"HideActiveWindow                                   <M-J>
"HideAllWindows
"HideCoverage
"HideSideWindows                                    <M-B>
"HideUnityPlayActions
"HidpiInfo
"HierarchyGroup
"HighlightUsagesInFile                              <M-S-F7>
"HippieBackwardCompletion                           <A-S-/>
"HippieCompletion                                   <A-/>
"HtmlAddTableColumnAfter
"HtmlAddTableColumnBefore
"HtmlTableCellNavigateDown
"HtmlTableCellNavigateLeft
"HtmlTableCellNavigateRight
"HtmlTableCellNavigateUp
"HTTP.Request.NewFile
"HTTPClient.AddRequest
"HTTPClient.Convert
"HTTPClient.CopyResponseBody
"HTTPClient.NewRequestInToolMenuAction
"HTTPClient.OpenCollection
"HTTPClient.RunAll
"HTTPClientConvertToCurlAndCopy
"HTTPClientGroup
"HTTPClientNewEnvironmentFile
"IdeaVim.ReloadVimRc.group
"IdeaVim.ReloadVimRc.reload                         <M-S-I>
"IdeScriptingConsole
"IgnoreChoicesGroup
"Images.ChangeBackground
"Images.ConvertSvgToPng
"Images.EditExternalEditorPath
"Images.EditExternally                              <M-A-F4>
"Images.Editor.ActualSize                           <M-o>
"Images.Editor.FitZoomToWindow
"Images.Editor.ToggleGrid                           <M-Þ>
"Images.Editor.ZoomIn                               <M-k>
"Images.Editor.ZoomOut                              <M-m>
"Images.EditorPopupMenu
"Images.EditorToolbar
"Images.ImageViewActions
"Images.SetBackgroundImage
"Images.ShowBorder
"Images.ShowThumbnails
"Images.Thumbnails.EnterAction                      <CR>
"Images.Thumbnails.Hide                             <M-W>
"Images.Thumbnails.ToggleFileName
"Images.Thumbnails.ToggleFileSize
"Images.Thumbnails.ToggleRecursive                  <A-j>
"Images.Thumbnails.ToggleTagsPanelName
"Images.Thumbnails.UpFolder                         <BS>
"Images.ThumbnailsPopupMenu
"Images.ThumbnailsToolbar
"Images.ThumbnailViewActions
"Images.ToggleTransparencyChessboard
"ImagesRootGroup
"ImmediateWindowOpen
"ImplementMethods                                   <C-I>
"ImportProfilerResultsFromHistory
"ImportSettings
"ImportTests
"ImportTestsFromFile
"IncludeAction
"IncomingChanges.Refresh
"IncomingChangesToolbar
"IncreaseColumnWidth                                <A-C-Right>
"IncrementalSearch
"IncrementWindowHeight                              <A-C-Down>
"IncrementWindowWidth                               <A-C-Right>
"Inline                                             <M-A-N>
"InsertLiveTemplate
"InspectCode
"InspectCodeActionInPopupMenus
"InspectCodeGroup
"InspectCodeInCodeMenuGroup
"InspectionToolWindow.TreePopup
"InspectOnProjectModelAction
"InspectThis                                        <M-A-S-A>
"InstallEditorPluginAction
"InstallNodeLocalDependencies
"InstallNodeLocalDependencies$Root
"IntegrateChangeSetAction
"IntegrateFiles
"IntroduceActionsGroup
"IntroduceConstant
"IntroduceField
"IntroduceParameter                                 <M-A-P>
"IntroduceParameterObject
"IntroduceVariable                                  <M-A-V>
"InvalidateCaches
"InvertBoolean
"JasmineGenerateAfterEachMethodAction
"JasmineGenerateBeforeEachMethodAction
"JasmineGenerateNewSpecAction
"JasmineGenerateNewSuiteAction
"JavaScript.Debugger.ReloadInBrowser
"JavaScript.Debugger.RestartFrame
"JavaScript.Debugger.ToggleExceptionBreakpoint
"Javascript.Linters.EsLint.Fix
"Javascript.Linters.StandardJS.Fix
"JavaScriptDebugger.HideActionsGroup
"JavaScriptDebugger.OpenUrl
"Jdbc.OpenConsole.Any                               <M-S-F10>
"Jdbc.OpenConsole.New                               <M-S-L>
"Jdbc.OpenConsole.New.Generate                      <M-S-L>
"Jdbc.OpenEditor.Console                            <F4>
"Jdbc.OpenEditor.Data                               <F4>
"Jdbc.OpenEditor.DDL                                <F12> button=1 clickCount=1 modifiers=256 button=2 clickCount=1 modifiers=0 Force touch
"Jdbc.OpenEditor.Files
"Jdbc.OpenEditor.Grid.DDL                           <M-C-Up>
"JS.TypeScript.Compile
"JS.TypeScript.Include.Generated.Declarations
"JsonCopyPointer
"JsonPathEvaluateAction
"JsonPathExportEvaluateResultAction
"JsTestFrameworkCodeGeneratorGroup
"JumpToColorsAndFonts
"JumpToLastChange                                   <M-K>
"JumpToLastWindow
"JumpToNextChange
"JumpToStatement                                    <M-A-S-F9>
"LangCodeInsightActions
"LanguageSpecificFoldingGroup
"LeftToolbarSideGroup
"LeftToolbarSideGroupXamarin
"LightEditModePopup
"LightEditOpenFileInProject
"List-scrollDown                                    <Pagedown>
"List-scrollDownExtendSelection                     <S-Pagedown>
"List-scrollUp                                      <Pageup>
"List-scrollUpExtendSelection                       <S-Pageup>
"List-selectFirstRow                                <M-Up>
"List-selectFirstRowExtendSelection                 <A-S-Up>
"List-selectLastRow                                 <M-Down>
"List-selectLastRowExtendSelection                  <A-S-Down>
"List-selectNextColumn                              <Right> <C-F>
"List-selectNextColumnExtendSelection               <S-Right>
"List-selectNextRow                                 <Down> <C-N>
"List-selectNextRowExtendSelection                  <S-Down>
"List-selectPreviousColumn                          <Left> <C-B>
"List-selectPreviousColumnExtendSelection           <S-Left>
"List-selectPreviousRow                             <Up> <C-P>
"List-selectPreviousRowExtendSelection              <S-Up>
"ListActions
"liveedit.UpdateRunningApplication                  <M-F10>
"Load.V8.Heap.Snapshot
"LocalChangesView.GearActions
"LocalChangesView.ShowOnDoubleClick
"LocalChangesView.ShowOnDoubleClick.EditorPreview
"LocalChangesView.ShowOnDoubleClick.Source
"LocalChangesView.SingleClickPreview
"LocalHistory
"LocalHistory.MainMenuGroup
"LocalHistory.PutLabel
"LocalHistory.ShowHistory
"LocalHistory.ShowLocalHistory
"LocalHistory.ShowSelectionHistory
"LocalHistory.Vcs.Operations.Popup.Group
"LocateInSolutionView
"Log.FileHistory.KeymapGroup
"Log.KeymapGroup
"LogDebugConfigure
"LogFocusRequests
"LogTraceScenarios
"LookupActions
"Macros
"MacrosGroup
"MainMenu
"MainMenuButton.ShowMenu
"mainRunToolbarDebugProcess                         <F5>
"mainRunToolbarRunProcess                           <C-F5>
"MaintenanceAction                                  <M-A-S-/>
"MaintenanceGroup
"MainToolBar
"MainToolbarPopupActions
"MainToolBarSettings
"ManageDotNetSdk
"ManageRecentProjects
"ManageTargets
"Markdown.ConfigurePandoc
"Markdown.EditorContextMenuGroup
"Markdown.Export
"Markdown.Extensions.CleanupExternalFiles
"Markdown.GenerateTableOfContents
"Markdown.GoogleDocsImport
"Markdown.ImportFromDocx
"Markdown.Insert                                    <C-CR>
"Markdown.InsertEmptyTable
"Markdown.InsertGroup
"Markdown.Layout.EditorAndPreview                   <M-K>
"Markdown.Layout.EditorOnly
"Markdown.Layout.PreviewOnly                        <M-S-V>
"Markdown.OpenDevtools
"Markdown.Styling.CreateLink                        <M-S-U>
"Markdown.Styling.CreateOrChangeList
"Markdown.Styling.SetHeaderLevel
"Markdown.Table.ColumnAlignmentActions
"Markdown.Table.InsertRow.InsertAbove
"Markdown.Table.InsertRow.InsertBelow
"Markdown.Table.InsertTableColumn.InsertAfter
"Markdown.Table.InsertTableColumn.InsertBefore
"Markdown.Table.RemoveCurrentColumn
"Markdown.Table.RemoveCurrentRow
"Markdown.Table.SelectCurrentColumn.SelectContentCells
"Markdown.Table.SelectRow
"Markdown.Table.SetColumnAlignment.Center
"Markdown.Table.SetColumnAlignment.Left
"Markdown.Table.SetColumnAlignment.Right
"Markdown.Table.SwapColumns.SwapWithLeftColumn
"Markdown.Table.SwapColumns.SwapWithRightColumn
"Markdown.Table.SwapRows.SwapWithAbove
"Markdown.Table.SwapRows.SwapWithBelow
"Markdown.TableActions
"Markdown.TableColumnActions
"Markdown.TableColumnActions.ColumnAlignmentActions.Popup
"Markdown.TableContextMenuGroup
"Markdown.TableRowActions
"Markdown.Toolbar.Floating
"Markdown.Toolbar.Left
"Markdown.Toolbar.Right
"Markdown.Tools
"MarkFileAs
"MarkNotificationsAsRead
"MarkRootGroup
"MaximizeActiveDialog
"MaximizeEditorInSplit
"MaximizeToolWindow                                 <M-S-Þ>
"MemberPushDown
"MembersPullUp
"MemoryView.SettingsPopupActionGroup
"MemoryView.ShowOnlyWithDiff
"MemoryView.SwitchUpdateMode
"MergeAllWindowsAction
"MergeSettings
"MethodDown                                         <C-S-Down>
"MethodHierarchy
"MethodHierarchy.BaseOnThisMethod
"MethodHierarchyPopupMenu
"MethodUp                                           <C-S-Up>
"MinimizeCurrentWindow                              <M-M>
"ModifyObject                                       <M-F6>
"Move
"MoveAttributeInAction
"MoveAttributeOutAction
"MoveEditorToOppositeTabGroup                       <M-C-Right>
"MoveElementLeft                                    <M-A-S-Left>
"MoveElementRight                                   <M-A-S-Right>
"MoveLineDown                                       <A-Down>
"MoveLineUp                                         <A-Up>
"MoveStatementDown
"MoveStatementUp
"MoveTabDown
"MoveTabRight                                       <M-C-Right>
"Mq.Patches.ContextMenu
"Mq.Patches.Toolbar
"NavBar-cancel                                      <Esc>
"NavBar-navigate                                    <F4>
"NavBar-return                                      <CR>
"NavBar-selectDown                                  <Down> <C-N>
"NavBar-selectEnd                                   <M-Right>
"NavBar-selectHome                                  <M-Left>
"NavBar-selectLeft                                  <Left> <C-B>
"NavBar-selectRight                                 <Right> <C-F>
"NavBar-selectUp                                    <Up> <C-P>
"NavBarActions
"NavBarLocationBottom
"NavbarLocationGroup
"NavBarLocationHide
"NavBarLocationTop
"NavbarPopupMenu
"NavBarToolBar
"NavBarToolBarOthers
"NavBarVcsGroup
"NavigateInFileGroup
"NavigateToImmediateWindow                          <M-A-I>
"NewCoffeeScriptFile
"newConfigurationDebugClass
"newConfigurationDefaultProfilerExecutorGroupContextActionId
"newConfigurationRunClass
"newConfigurationRunCoverage
"NewDir
"NewEditorConfigFile
"NewElement                                         <C-CR>
"NewElementSamePlace                                <A-C-N>
"NewFile                                            <M-N>
"NewFromTemplate
"NewGroup
"NewHtmlFile
"NewJavaScriptFile
"NewJSONFile
"NewPackageJsonFile
"NewPrivateEnvironmentFile
"NewProjectOrModuleGroup
"NewPublicEnvironmentFile
"NewPubxmlFile
"NewPugFile
"NewRiderProject
"NewRiderSolutionFolder
"NewScratchBuffer
"NewScratchFile                                     <M-S-N>
"NewStylesheetFile
"NewT4File
"NewToolbarActions
"NewToolbarActionsXamarin
"NewTypeScriptConfigFile
"NewTypeScriptFile
"NewUnrealModuleAction
"NewUnrealPluginAction
"NewXml
"NewXmlDescriptor
"NewXMLFile
"NextDiff
"NextEditorTab                                      <C-S-Right>
"NextOccurence
"NextParameter                                      <Tab>
"NextProjectWindow                                  <C-W>
"NextSplitter                                       <A-Tab>
"NextTab                                            <M-S-]> <M-A-Right>
"NextTemplateParameter                              <Tab> <CR>
"NextTemplateVariable                               <CR>
"NextWindow                                         <M-À>
"Notifications
"NuGet
"OasEndpointsSidePanelSaveAction
"OnlineDocAction
"OpenApplicationHostConfig
"openAssertEqualsDiff
"OpenBlankEditorInBlankDiffWindow
"OpenEditorInOppositeTabGroup
"OpenElementInNewWindow
"OpenExceptionSettings
"OpenFile                                           <M-O>
"OpenFileEditorInBlankDiffWindow
"OpenImportingElementAction
"OpenInBrowser
"OpenInBrowserEditorContextBarGroupAction
"OpenInBrowserGroup
"OpenInRightSplit                                   <S-CR> button=1 clickCount=2 modifiers=512
"OpenMouseWheelSmoothScrollSettings
"OpenProjectDiagramFromFile
"OpenProjectWindows
"OpenRecentEditorInBlankDiffWindow
"OpenRemoteDevelopment
"OpenSolutionApplicationHostConfig
"OpenWinFormsCodeAction
"OpenWinFormsDesignerAction
"OpenXCodeAction
"OptimizeImports                                    <A-S-O>
"org.editorconfig.configmanagement.generate.EditorConfigGenerateLanguagePropertiesAction
"org.intellij.plugins.markdown.ui.actions.scrolling.AutoScrollAction
"org.intellij.plugins.markdown.ui.actions.styling.HeaderDownAction
"org.intellij.plugins.markdown.ui.actions.styling.HeaderUpAction
"org.intellij.plugins.markdown.ui.actions.styling.InsertImageAction <M-U>
"org.intellij.plugins.markdown.ui.actions.styling.MarkdownIntroduceLinkReferenceAction
"org.intellij.plugins.markdown.ui.actions.styling.ToggleBoldAction <M-B>
"org.intellij.plugins.markdown.ui.actions.styling.ToggleCodeSpanAction <M-S-C>
"org.intellij.plugins.markdown.ui.actions.styling.ToggleItalicAction <M-I>
"org.intellij.plugins.markdown.ui.actions.styling.ToggleStrikethroughAction <M-S-S>
"Other.KeymapGroup
"OtherMenu
"OverrideFileTypeAction                             <M-K>
"OverrideMethods
"PackageSelectionAction
"PackSelectionAction
"PairFileActions
"ParameterInfo                                      <M-S- >
"ParameterInfo.GoToPreviousSignature                <M-S-P>
"ParameterNameHints
"PasteGroup
"PasteMultiple
"Patch.MainMenu
"Pause                                              <F6>
"PauseOutput
"Perforce.Force.Refresh
"Perforce.Shelve
"Perforce.SyncToRevision
"Perforce.Toolbar.ShowMoreActions
"Perforce.Unshelve
"Perforce.Unshelve.And.Delete
"PerforceDirect.Edit                                <M-A-E>
"PerforceDirect.Menu
"PerforceEnableIntegration
"Performance.ActivityMonitor
"performancePlugin.ExecuteScriptAction
"performancePlugin.OpenIndexingDiagnosticsAction
"performancePlugin.ProfileIndexingAction
"performancePlugin.ProfileSlowStartupAction
"performancePlugin.ShowMemoryDialogAction
"performancePlugin.StartAsyncProfilerAction
"PerformXdtTransformationAction
"PinActiveEditorTab
"PinActiveTab
"PinActiveTabToggle
"PinToolwindowTab
"PlanViewGroup
"PlaybackLastMacro
"PlaySavedMacrosAction
"plugin.InstallFromDiskAction
"popup@BookmarkContextMenu
"popup@ExpandableBookmarkContextMenu
"PopupHector                                        <M-A-S-H>
"PopupMenu-cancel                                   <Esc>
"PopupMenu-return                                   <CR>
"PopupMenu-selectChild                              <Right> <C-F>
"PopupMenu-selectNext                               <Down> <C-N>
"PopupMenu-selectParent                             <Left> <C-B>
"PopupMenu-selectPrevious                           <Up> <C-P>
"PopupMenuActions
"PowerSaveGroup
"PreprocessT4Template
"preview.actions.ActualSizeAction
"preview.actions.FitToWindowAction
"preview.actions.MoveToHighlightingRectOnPreview
"preview.actions.ZoomInAction
"preview.actions.ZoomOutAction
"PreviewXdtTransformationAction
"PreviousDiff                                       <S-F7>
"PreviousEditorTab                                  <C-S-Left>
"PreviousOccurence
"PreviousProjectWindow                              <M-A-S-À>
"PreviousTab                                        <M-S-[> <M-A-Left>
"PreviousTemplateVariable                           <S-Tab>
"PreviousWindow                                     <M-S-À>
"PrevParameter                                      <S-Tab>
"PrevSplitter                                       <A-S-Tab>
"PrevTemplateParameter
"Print
"PrintExportGroup
"ProblemsView.AutoscrollToSource
"ProblemsView.CopyProblemDescription                <M-C>
"ProblemsView.GroupByToolId
"ProblemsView.OpenInPreviewTab
"ProblemsView.Options
"ProblemsView.QuickFixes                            <M-.> <A-CR>
"ProblemsView.SeverityFilters
"ProblemsView.ShowPreview
"ProblemsView.SortByName
"ProblemsView.SortBySeverity
"ProblemsView.SortFoldersFirst
"ProblemsView.ToolWindow.SecondaryActions
"ProblemsView.ToolWindow.Toolbar
"ProblemsView.ToolWindow.TreePopup
"ProblemsViewReSharperReanalyzeAllFiles
"ProblemsViewReSharperReanalyzeFilesWithErrors
"ProductivityGuide
"Profiler
"Profiler.ExcludeCallAction
"Profiler.ExcludeSubTreeAction
"Profiler.FocusOnCallAction
"Profiler.FocusOnSubtreeAction
"Profiler.OpenBackTracesAction
"Profiler.OpenMergedCalleesAction
"Profiler.OpenTreesInNewTabGroup
"Profiler.RevealSnapshotAction
"Profiler.TransformMainTreeGroup
"ProfilerActions
"ProjectView.AbbreviatePackageNames
"ProjectView.AutoscrollFromSource
"ProjectView.AutoscrollToSource
"ProjectView.CompactDirectories
"ProjectView.FileNesting
"ProjectView.FlattenModules
"ProjectView.FlattenPackages
"ProjectView.FoldersAlwaysOnTop
"ProjectView.HideEmptyMiddlePackages
"ProjectView.ManualOrder
"ProjectView.OpenInPreviewTab
"ProjectView.ShowExcludedFiles
"ProjectView.ShowLibraryContents
"ProjectView.ShowMembers
"ProjectView.ShowModules
"ProjectView.ShowVisibilityIcons
"ProjectView.SortByType
"ProjectView.ToolWindow.Appearance.Actions
"ProjectView.ToolWindow.SecondaryActions
"ProjectViewEditSource                              <F4>
"ProjectViewPopupMenu
"ProjectViewPopupMenuModifyGroup
"ProjectViewPopupMenuRefactoringGroup
"ProjectViewPopupMenuRunGroup
"ProjectViewPopupMenuSettingsGroup
"ProjectViewToolbar
"ProjectWidget.Actions
"PublishGroup
"PublishGroup.Base
"PublishGroup.CompareLocalVsRemote
"PublishGroup.CompareLocalVsRemoteWith
"PublishGroup.Download
"PublishGroup.DownloadFrom
"PublishGroup.SyncLocalVsRemote
"PublishGroup.SyncLocalVsRemoteWith
"PublishGroup.Upload
"PublishGroup.UploadAllOpenFiles
"PublishGroup.UploadAllOpenFilesTo
"PublishGroup.UploadTo                              <M-A-S-X>
"PublishGroupPopupMenu
"QueryExecution.Settings
"QuickActionPopup                                   <M-A-CR>
"QuickActions
"QuickChangeScheme                                  <M-K>
"QuickDocCopy                                       <M-C>
"QuickEvaluateExpression                            <M-A-F8>
"QuickFixes
"QuickImplementations                               <A- > <A-F12>
"QuickJavaDoc                                       button=2 clickCount=1 modifiers=128 <M-K>
"QuickList.Deployment
"QuickPreview                                       < >
"QuickTypeDefinition
"QUnitGenerateNewTestAction
"QUnitGenerateSetupAction
"QUnitGenerateTearDownAction
"Rainbow.ScopeHighlightingAction                    button=3 clickCount=1 modifiers=256
"Rainbow.ScopeOutsideHighlightingRestrainAction     button=3 clickCount=1 modifiers=512
"RawNodeForDebuggerBrowsableValuesSettingAction
"RdConflictDeclarationsNavigationAction
"RdExposingApiesNavigationAction
"RdExtensionMethodsNavigationAction
"RdFindReferencedCodeAction
"RdFindUnityUsagesAction
"RdFlowTargetNavigationAction
"RdFunctionExitsNavigationAction
"RdGoToMatchedTagsAction
"RdImplementingMembersNavigationAction
"RdJsonSelectSolution
"RdOverloadsNavigationAction
"RdParameterDeclarationNavigationAction
"RdSubstitutionNavigationAction
"ReactClassToFunctionComponentAction
"ReactExtractComponentAction
"ReactFunctionToClassComponentAction
"Read.V8.Log.In.House
"RearrangeCode
"RebuildCurrentProject
"RebuildOnlyCurrentProject
"RebuildOnlyStartupProject
"RebuildSelectedProjectWithoutDependencies
"RebuildSelectionAction
"RebuildSelectionWithDiagnosticsAction
"RebuildSolutionAction
"RebuildSolutionWithDiagnosticsAction
"RebuildStartupProject
"RecentChangedFiles
"RecentChanges                                      <A-S-C>
"RecentFiles                                        <M-E>
"RecentLocations
"RecentProjectListGroup                             <C-R>
"RefactoringMenu
"Refactorings.QuickListPopupAction                  <C-S-R>
"ReferenceInCSharpInteractive
"ReformatCode                                       <A-S-F>
"Refresh                                            <M-R>
"RefreshStackFrame                                  button=1 clickCount=2 modifiers=0
"Register
"RegistrationActions
"RemoteExternalToolsGroup
"RemoteHost.NewGroup
"RemoteHost.NewRemoteItem                           <C-CR>
"RemoteHostView.CopyPaths                           <M-A-C> <M-K>
"RemoteHostView.CreateFile
"RemoteHostView.CreateFolder
"RemoteHostView.EditRemoteFile
"RemoteHostView.EditSource                          <F4>
"RemoteHostView.Rename
"RemoteHostView.SetPermissions
"RemoteHostView.ToggleExclusion
"RemoteHostViewPopupMenu
"RemoteServers.AddCloudConnectionGroup
"RemoteServers.ChooseServerDeployment
"RemoteServers.ChooseServerDeploymentWithDebug
"RemoteServers.ConnectServer
"RemoteServers.DisconnectServer
"RemoteServers.EditDeploymentConfig
"RemoteServers.EditServerConfig                     <M-K>
"RemoteServersViewPopup
"RemoteServersViewToolbar
"RemoteServersViewToolbar.Top
"RemoveBom
"RemoveBom.Group
"RenameAttributeAction
"RenameElement                                      <F2>
"RenameElementInNavBar
"RenameFile
"RenameTagAction
"ReopenClosedTab                                    <M-S-T>
"Replace                                            <M-A-F>
"ReplaceAttributeWithTagAction
"ReplaceInPath                                      <M-S-H>
"ReplaceTagWithAttributeAction
"ReportBug
"RepositoryChangesBrowserToolbar
"Rerun                                              <M-;> <M-S-F5>
"RerunFailedTests                                   <M-;>
"RerunTests
"ResetColumnsWidth                                  <A-C-Up>
"ResetLanguageLevel
"ResetToMySettings
"ResetToTheirsSettings
"ResetWindowsDefenderNotification
"ReSharperGotoContainingDeclaration                 <C-[>
"ReSharperGotoImplementation
"ReSharperGotoNextErrorInSolution                   <A-F2>
"ReSharperGotoPrevErrorInSolution                   <A-S-F2>
"ReSharperNavigateTo                                <C-S-N>
"ReSharperReanalyzeAllFiles
"ReSharperReanalyzeFilesWithErrors
"ReSharperSelectContainingDeclaration               <C-S-[>
"ResizeToolWindowDown                               <A-C-Down>
"ResizeToolWindowGroup
"ResizeToolWindowLeft                               <A-C-Left>
"ResizeToolWindowRight                              <A-C-Right>
"ResizeToolWindowUp                                 <A-C-Up>
"Resolve
"ResolveAll
"RestartIde
"RESTClient.ConvertToNew
"RESTClient.RequestFromLegacyFiles
"RESTClient.ShowHistory
"RestoreDefaultExtensionScripts
"RestoreDefaultSettings
"RestoreFontPreviewTextAction
"Resume                                             <F5>
"RevealBaseDirectoryAction
"RevealGroup
"RevealIn                                           <M-K> <M-A-R>
"ReverteOverrideFileTypeAction
"RevertUnchanged
"RevisionGraph
"Rider.NewFileFromTemplate
"Rider.Plugins.FSharp.DebugInFsi                    <M-A-\>
"Rider.Plugins.FSharp.FsiGroup
"Rider.Plugins.FSharp.SendToFsi                     <M-\>
"Rider.Plugins.FSharp.StartFsi
"Rider.ProblemsView.CurrentFileShowPreview
"Rider.ProblemsView.ErrorsInSolution
"Rider.ProblemsView.ErrorsInToolset
"Rider.ProblemsView.ShowErrors
"Rider.ProblemsView.ShowGroups
"Rider.ProblemsView.ShowIgnored
"Rider.ProblemsView.ShowInfo
"Rider.ProblemsView.ShowPreview
"Rider.ProblemsView.ShowWarnings
"Rider.UnitTesting.ExplorerOptions
"Rider.UnitTesting.ExplorerPopup
"Rider.UnitTesting.ExportOptions
"Rider.UnitTesting.Filters
"Rider.UnitTesting.LeftExplorerToolbar
"Rider.UnitTesting.LeftSessionToolbar
"Rider.UnitTesting.Main
"Rider.UnitTesting.MainMenu
"Rider.UnitTesting.MainMenu.Help
"Rider.UnitTesting.MainMenu.ToolWindow
"Rider.UnitTesting.MainMenu.ToolWindow.Filters
"Rider.UnitTesting.Navigation
"Rider.UnitTesting.PopupCommon
"Rider.UnitTesting.QuickList
"Rider.UnitTesting.RerunBroken.Split
"Rider.UnitTesting.RunContext
"Rider.UnitTesting.RunContext.Plugin
"Rider.UnitTesting.RunContext.Split
"Rider.UnitTesting.RunContextTw
"Rider.UnitTesting.RunContextTw.Plugin
"Rider.UnitTesting.RunSession
"Rider.UnitTesting.RunSession.Plugin
"Rider.UnitTesting.RunSessionTw
"Rider.UnitTesting.RunSessionTw.Plugin
"Rider.UnitTesting.RunSolution
"Rider.UnitTesting.RunSolution.Plugin
"Rider.UnitTesting.RunSolutionTw
"Rider.UnitTesting.RunSolutionTw.Plugin
"Rider.UnitTesting.RunTree.Split
"Rider.UnitTesting.RunTreeTw
"Rider.UnitTesting.RunTreeTw.Plugin
"Rider.UnitTesting.SessionOptions
"Rider.UnitTesting.SessionPopup
"Rider.UnitTesting.StructureViewPopupMenu
"Rider.UnitTesting.TopExplorerToolbar
"Rider.UnitTesting.TopSessionToolbar
"Rider.UnitTesting.TopToolbar.GearOptions.Plugin
"Rider.UnitTesting.TopToolbar.MiscOptions.Plugin
"Rider.UnitTesting.TopToolbar.MiscOptions.Unity
"Rider.UnitTesting.UsageView.Popup
"Rider.Web.SetUpAspNetCoreCertificate
"Rider.Web.SetUpIisExpressCertificate
"Rider.WelcomeScreen.Documentation
"RiderAddProjectDependenciesToSolutionFilterAction
"RiderAddProjectDependencyTreeToSolutionFilterAction
"RiderAddToSolutionFilterProjectAction
"RiderBackendAction-Abstract2Interface
"RiderBackendAction-Anonymous2Declared
"RiderBackendAction-ChangeNullability
"RiderBackendAction-Constructor2FactoryMethodAction
"RiderBackendAction-CppConvertToScopedEnumAction
"RiderBackendAction-CppIntroduceNamespaceAlias
"RiderBackendAction-CppIntroduceType
"RiderBackendAction-CppIntroduceUsingEnum
"RiderBackendAction-EncapsulateField
"RiderBackendAction-Extension2StaticAction
"RiderBackendAction-ExtractClass
"RiderBackendAction-ExtractContentPlaceholder
"RiderBackendAction-ExtractGlobalUsing
"RiderBackendAction-Function2Indexer
"RiderBackendAction-Function2Property
"RiderBackendAction-Indexer2Function
"RiderBackendAction-InlineContent
"RiderBackendAction-InlineGlobalUsing
"RiderBackendAction-Interface2Abstract
"RiderBackendAction-InvertBool
"RiderBackendAction-MakeNonStatic
"RiderBackendAction-MakeStatic
"RiderBackendAction-MoveIntoMatchingFiles
"RiderBackendAction-Property2Auto
"RiderBackendAction-Property2Function
"RiderBackendAction-Refactorings.AdjustNamespaces
"RiderBackendAction-Static2ExtensionAction
"RiderBackendAction-TransformParameters
"RiderBackendAction-Type2Partial
"RiderBackendAction-UseBaseTypeAction
"RiderBackendProfiling
"RiderCollapseToDefinitions
"RiderCompactFormatCode
"RiderCopyRootPath
"RiderDebuggerApplyEncChagnes
"RiderDebuggerDisableMethodToInvokeAction
"RiderDetachDebuggerAction
"RiderDiagram.DefaultGraphToolbar
"RiderEditEditorConfig
"RiderEditSettingsLayerOptions
"RiderEditSource                                    <F4>
"RiderEditSourceInRightSplit                        <S-CR> button=1 clickCount=2 modifiers=512
"RiderExecuteCustomToolAction
"RiderExpandCollapse
"RiderExportToEditorConfig
"RiderExportToImageAction
"RiderFileFormattingInfo
"RiderFileMiscGroup
"RiderFileNewGroup
"RiderFileOpenGroup
"RiderHelp
"RiderHideThreads
"RiderInspect
"RiderInspectSubsection1
"RiderIOS
"RiderLink.CompileBeforeRun
"RiderLink.CurrentCamLoc
"RiderLink.DedicatedServer
"RiderLink.DefaultPlayerStart
"RiderLink.FourPlayers
"RiderLink.MobilePreview
"RiderLink.Modes
"RiderLink.NewEditorWindow
"RiderLink.NumberOfPlayers
"RiderLink.OnePlayer
"RiderLink.PauseUnreal
"RiderLink.RefreshProjects
"RiderLink.ResumeUnreal
"RiderLink.SelectedViewport
"RiderLink.Simulate
"RiderLink.SingleStepUnreal
"RiderLink.SpawnPlayerAt
"RiderLink.StandaloneGame
"RiderLink.StartUnreal
"RiderLink.StopUnreal
"RiderLink.ThreePlayers
"RiderLink.TwoPlayers
"RiderLink.UnrealPlaySettings
"RiderLink.VRPreview
"RiderLink.VulkanPreview
"RiderLoadProjectAction
"RiderManageRecentProjects
"RiderMoreDebuggerSettings
"RiderNewSolution
"RiderNuGetBrowseActionGroup
"RiderNuGetBrowseLicenseAction
"RiderNuGetBrowseNuGetOrgAction
"RiderNuGetBrowseOnGoogleAction
"RiderNuGetBrowseProjectPageAction
"RiderNuGetContextPopupAction                       <M-.> <A-CR>
"RiderNuGetCopyPackageNameAction                    <M-C>
"RiderNuGetGenerateBindingRedirectsAction
"RiderNuGetInstallPackageAction
"RiderNuGetManagePackagesForCurrentProjectAction
"RiderNuGetManagePackagesForProjectAction
"RiderNuGetMigrateForProjectAction
"RiderNuGetOpenPackagesFolderAction
"RiderNuGetOperationActionGroup
"RiderNuGetQuickDocAction                           button=2 clickCount=1 modifiers=128 <M-K>
"RiderNuGetQuickListPopupAction
"RiderNuGetRemovePackageAction
"RiderNuGetRestoreAction
"RiderNuGetRestoreForceAction
"RiderNuGetRevealActionGroup
"RiderNuGetRevealInstallationPathsAction
"RiderNuGetRevealVersionActionGroup
"RiderNuGetShowCachesAction
"RiderNuGetShowInAssemblyExplorerAction
"RiderNuGetShowLogAction
"RiderNuGetShowPackagesAction
"RiderNuGetShowSettingsAction
"RiderNuGetShowSourcesAction
"RiderNuGetSmartItemPopupActionGroup
"RiderNuGetToggleDependenciesExpanderAction         <M-D>
"RiderNuGetToggleInfoExpanderAction                 <M-I>
"RiderNuGetToggleToolWindowAction
"RiderNuGetUpgradeAction
"RiderNuGetUpgradeAllInContextAction
"RiderOnlineHelpAction                              <M-S-F1>
"RiderOpenSolution                                  <C-S-O>
"RiderPrintGraphAction
"RiderPrintPreviewAction
"RiderProblemsView.ToolWindow.TreePopup
"RiderProblemsViewToolsetContextPopupAction         <M-.> <A-CR>
"RiderProjectDiagramApplyCurrentLayout              <F5>
"RiderProjectDiagramCalcCouplingAction
"RiderProjectDiagramShowGroupsAction
"RiderProjectDiagramShowNeighbours
"RiderProjectDiagramTransitiveRefsAction
"RiderPublish
"RiderReloadProjectAction
"RiderRemoveAllLineBreakpoints                      <M-S-F9>
"RiderRemoveFromSolutionFilterProjectAction
"RiderRenameFile
"RiderRestoreDefaultLayout
"RiderRevealFile
"RiderRevealGroup
"RiderShowIlViewerAction
"RiderShowIncomingCalls
"RiderShowLibraryFrames
"RiderShowOutgoingCalls
"RiderShowResxEditorAction
"RiderShowValueDestination
"RiderShowValueOrigin
"RiderSpaciousFormatCode
"RiderStartIndexAction
"RiderStartSampling
"RiderStartTimeline
"RiderStopIndexAction
"RiderStopProfiling
"RiderStoreDefaultLayout
"RiderStrictFormatCode
"RiderTakeMemorySnapshot
"RiderToolWindowPerIde
"RiderToolWindowPerProject
"RiderTypeHierarchy.BaseOnThisType                  <C-H>
"RiderTypeHierarchy.Class
"RiderTypeHierarchy.Subtypes
"RiderTypeHierarchy.Supertypes
"RiderTypeHierarchyPopupMenu
"RiderUnitTestAbortedTestsFilterAction
"RiderUnitTestAllTestsFilterAction
"RiderUnitTestAppendChildrenAction
"RiderUnitTestAppendChildrenTwAction
"RiderUnitTestAppendTestsAction                     <M-;> <M-;>
"RiderUnitTestAppendTestsTwAction                   <M-A-N>
"RiderUnitTestBrokenTestsFilterAction
"RiderUnitTestCurrentDocumentHelpAction
"RiderUnitTestDebugContextAction                    <M-;> <M-;> <C-S-D>
"RiderUnitTestDebugContextTwAction                  <M-D>
"RiderUnitTestDebugContextUntilFailAction
"RiderUnitTestDebugContextUntilFailTwAction
"RiderUnitTestDiagnosticsActionGroup
"RiderUnitTestDotMemoryHelpAction
"RiderUnitTestDotMemoryRunTreeTwAction
"RiderUnitTestDotMemoryUnitContextAction            <M-;> <M-;>
"RiderUnitTestDotMemoryUnitContextTwAction
"RiderUnitTestDotMemoryUnitCurrentSessionAction
"RiderUnitTestDotMemoryUnitCurrentSessionTwAction
"RiderUnitTestDotMemoryUnitSolutionAction           <M-;> <M-;>
"RiderUnitTestDotMemoryUnitSolutionTwAction
"RiderUnitTestExecutingHelpAction
"RiderUnitTestExportSessionAction
"RiderUnitTestExportSessionResultTextAction
"RiderUnitTestFailedTestsFilterAction
"RiderUnitTestFilterPositionActionGroup
"RiderUnitTestFilterPositionAutomaticAction
"RiderUnitTestFilterPositionHideAction
"RiderUnitTestFilterPositionOnToolbarAction
"RiderUnitTestFilterPositionUnderToolbarAction
"RiderUnitTestFocusExplorerAction
"RiderUnitTestFocusSessionAction
"RiderUnitTestFocusToolWindowAfterDebugAction
"RiderUnitTestGroupByAction
"RiderUnitTestIgnoredTestsFilterAction
"RiderUnitTestImportSessionAction
"RiderUnitTestInconclusiveTestsFilterAction
"RiderUnitTestIndexHelpAction
"RiderUnitTestMergeBrokenStatusFiltersAction
"RiderUnitTestNavigateToExplorerAction
"RiderUnitTestNavigateToSessionAction
"RiderUnitTestNewSessionAction                      <M-;> <M-;>
"RiderUnitTestNewSessionTwAction                    <M-S-N>
"RiderUnitTestNextOccurenceAction
"RiderUnitTestOpenTestOutputInEditorAction
"RiderUnitTestPendingTestsFilterAction
"RiderUnitTestPreviousOccurenceAction
"RiderUnitTestProjectOrSolutionHelpAction
"RiderUnitTestQuickListPopupAction                  <A-S-U>
"RiderUnitTestRemoveElementsFromSessionAction
"RiderUnitTestRemoveElementsFromSessionTwAction     <BS>
"RiderUnitTestRenameSessionAction
"RiderUnitTestRepeatPreviousRunAction               <M-;> <M-;>
"RiderUnitTestRepeatPreviousRunTwAction
"RiderUnitTestRerunBrokenSplitAction
"RiderUnitTestRunContextAction                      <M-;> <M-;> <C-S-R>
"RiderUnitTestRunContextSplitAction
"RiderUnitTestRunContextTwAction                    <S-CR>
"RiderUnitTestRunContextUntilFailAction             <M-;> <M-;>
"RiderUnitTestRunContextUntilFailTwAction
"RiderUnitTestRunCurrentSessionAction               <M-;> <M-;>
"RiderUnitTestRunCurrentSessionTwAction             <M-Y>
"RiderUnitTestRunningTestsFilterAction
"RiderUnitTestRunSolutionAction                     <M-;> <M-;>
"RiderUnitTestRunSolutionTwAction                   <M-L>
"RiderUnitTestRunTreeSplitAction
"RiderUnitTestRunTreeTwAction                       <M-S-CR>
"RiderUnitTestSessionAbortAction                    <M-;> <M-;>
"RiderUnitTestSessionAbortTwAction
"RiderUnitTestSessionBuildPolicyActionGroup
"RiderUnitTestSessionBuildPolicyAutomaticAction
"RiderUnitTestSessionBuildPolicyNeverAction
"RiderUnitTestSessionBuildPolicyWholeSolutionAction
"RiderUnitTestSessionClearResultAction
"RiderUnitTestSessionClearResultTwAction
"RiderUnitTestSessionLockAction
"RiderUnitTestSessionPlatformMonoPreferenceActionGroup
"RiderUnitTestSessionPlatformMonoPreferenceClrAction
"RiderUnitTestSessionPlatformMonoPreferenceDefaultAction
"RiderUnitTestSessionPlatformMonoPreferenceMonoAction
"RiderUnitTestSessionPlatformTypeAutomaticAction
"RiderUnitTestSessionPlatformTypeDefaultAction
"RiderUnitTestSessionPlatformTypeX64Action
"RiderUnitTestSessionPlatformTypeX86Action
"RiderUnitTestSessionRerunAbortedTestsAction
"RiderUnitTestSessionRerunBrokenTestsAction
"RiderUnitTestSessionRerunFailedTestsAction         <M-;> <M-;>
"RiderUnitTestSessionRerunFailedTestsTwAction
"RiderUnitTestSessionRerunInconclusiveTestsAction
"RiderUnitTestSessionSelectedIdeActionGroup
"RiderUnitTestSessionSplitterActionGroup
"RiderUnitTestSessionSplitterAutomaticAction
"RiderUnitTestSessionSplitterHorizontalAction
"RiderUnitTestSessionSplitterVerticalAction
"RiderUnitTestSessionStateHelpAction
"RiderUnitTestSessionTargetFrameworkActionGroup
"RiderUnitTestSessionTargetFrameworkAutomaticAction
"RiderUnitTestSessionTargetFrameworkClr2Action
"RiderUnitTestSessionTargetFrameworkClr45Action
"RiderUnitTestSessionTargetFrameworkClr46Action
"RiderUnitTestSessionTargetFrameworkClr47Action
"RiderUnitTestSessionTargetFrameworkClr4Action
"RiderUnitTestSessionTargetFrameworkDefaultAction
"RiderUnitTestSessionTargetPlatformActionGroup
"RiderUnitTestSessionTimeAction
"RiderUnitTestSessionToggleProgressBarActionGroup
"RiderUnitTestSessionToggleProgressBarPositionAction
"RiderUnitTestSessionToggleProgressBarTextAction
"RiderUnitTestSessionTrackRunningAction
"RiderUnitTestShowLastLaunchLogAction
"RiderUnitTestShowLastRunnerLogAction
"RiderUnitTestShowSettingsAction
"RiderUnitTestSuccessTestsFilterAction
"RiderUnitTestTargetFrameworkFilterAction
"RiderUnitTestToggleHideEmptyTestFiltersAction
"RiderUnitTestToolWindowHelpAction
"RiderUnitTestTreeCollapseAllAction                 <M-m>
"RiderUnitTestTreeExpandAllAction                   <M-k>
"RiderUnitTestTreeRefreshAction
"RiderUnitTestTreeSelectionPopupAction              <M-.> <A-CR>
"RiderUnitTestTreeTextFilterAction                  <M-F>
"RiderUnitTestUnknownTestsFilterAction
"RiderUnityOpenEditorLogAction
"RiderUnityOpenPlayerLogAction
"RiderUnloadProjectAction
"RiderWelcomeScreen
"RiderWindowLayoutActions
"RightToolbarSideGroup
"RightToolbarSideGroupXamarin
"RoslynBackendProfiling
"RoslynStartSampling
"RoslynStartTimeline
"RoslynTakeMemorySnapshot
"Run                                                <C-F5>
"RunAnything
"RunClass
"RunConfiguration
"RunConfigurationTemplatesForNewProjects
"RunContextGroup
"RunContextGroupInner
"RunContextGroupMore
"RunContextPopupGroup
"RunCoverage
"RunDashboard.AddType
"RunDashboard.ClearContent
"RunDashboard.CopyConfiguration
"RunDashboard.Debug                                 <C-S-D>
"RunDashboard.EditConfiguration                     <F4>
"RunDashboard.Filter
"RunDashboard.GroupBy
"RunDashboard.GroupByStatus
"RunDashboard.GroupByType
"RunDashboard.GroupConfigurations
"RunDashboard.HideConfiguration
"RunDashboard.OpenRunningConfigInNewTab
"RunDashboard.RemoveType
"RunDashboard.RestoreConfiguration
"RunDashboard.RestoreHiddenConfigurations
"RunDashboard.Run
"RunDashboard.Stop                                  <S-F5>
"RunDashboard.UngroupConfigurations                 <Del> <BS>
"RunDashboardContentToolbar
"RunDashboardPopup
"RunInspection                                      <M-A-S-I>
"RunInspectionOn
"RunJsbtTask                                        <A-F11>
"RunMenu
"Runner.CloseAllUnpinnedViews
"Runner.CloseAllViews
"Runner.CloseOtherViews
"Runner.CloseView
"Runner.Focus
"Runner.FocusOnStartup
"Runner.Layout
"Runner.RestoreLayout
"Runner.ToggleTabLabels
"Runner.View.Close.Group
"Runner.View.Popup
"Runner.View.Toolbar
"RunnerActions
"RunnerActionsTouchbar
"RunnerLayoutActions
"runShellFileAction
"RunTestGroup
"RunToCursor                                        <A-F9> Force touch
"RunToolbarActionsGroup
"RunToolbarAdditionalProcessActions
"RunToolbarDebuggerAdditionalActions
"RunToolbarDebugMoreActionGroupName
"RunToolbarDebugMoreActionSubGroupName
"RunToolbarDebugProcess
"RunToolbarEditConfigurationAction
"RunToolbarMainActionsGroup
"RunToolbarMainMoreActionGroup
"RunToolbarMainMultipleStopAction
"RunToolbarMainRunConfigurationsAction
"RunToolbarMainSlotActive
"RunToolbarMainSlotInfoAction
"RunToolbarMoreActionGroup
"RunToolbarMoveToTopAction
"RunToolbarPauseAction
"RunToolbarProcessActionGroup
"RunToolbarProcessMainActionGroup
"RunToolbarProcessStartedAction
"RunToolbarProfileMainMoreActionGroup
"RunToolbarProfileMoreActionGroupName
"RunToolbarProfileMoreActionSubGroupName
"RunToolbarProfileMoreActionSubGroupName_additionAction
"RunToolbarProfileMoreActionSubGroupName_additionActionChooserGroupId
"RunToolbarRemoveSlotAction
"RunToolbarRerunAction
"RunToolbarResumeAction
"RunToolbarRunConfigurationsAction
"RunToolbarRunProcess
"RunToolbarShowHidePopupAction
"RunToolbarShowToolWindowTab
"RunToolbarSlotContextMenuGroup
"RunToolbarStopAction
"RunToolbarWidgetAction
"RunToolbarWidgetCustomizableActionGroup
"RunWithDropDown
"SafeDelete
"SaveAll                                            <M-A-S>
"SaveAsTemplate
"SaveDocument                                       <M-S>
"SaveFileAsTemplate
"SaveProjectDiagram
"ScopeView.EditScopes
"ScopeViewPopupMenu
"Scratch.ChangeLanguage
"Scratch.ExportToScratch
"Scratch.ShowFilesPopup
"ScrollPane-scrollDown                              <M-Pagedown>
"ScrollPane-scrollEnd
"ScrollPane-scrollHome
"ScrollPane-scrollLeft
"ScrollPane-scrollRight
"ScrollPane-scrollUp                                <M-Pageup>
"ScrollPane-unitScrollDown
"ScrollPane-unitScrollLeft
"ScrollPane-unitScrollRight
"ScrollPane-unitScrollUp
"ScrollPaneActions
"ScrollTreeToCenter                                 <C-L>
"SearchEverywhere
"SearchEverywhere.CompleteCommand                   <Tab>
"SearchEverywhere.NavigateToNextGroup               <Pagedown>
"SearchEverywhere.NavigateToPrevGroup               <Pageup>
"SearchEverywhere.NextTab                           <Tab>
"SearchEverywhere.PrevTab                           <S-Tab>
"SearchEverywhere.SelectItem                        <CR>
"SearchEverywhereActions
"SearchEverywhereNewToolbarAction
"SegmentedButton-left                               <Left> <C-B>
"SegmentedButton-right                              <Right> <C-F>
"SegmentedVcsActionsBarGroup
"SegmentedVcsControlAction
"SelectAllOccurrences                               <M-F2> <M-C-G> <M-S-L>
"SelectIn                                           <A-F1>
"SelectInProjectView                                <M-K>
"SelectInRemoteHost
"SelectNextOccurrence                               <M-D> <M-F3>
"SelectVirtualTemplateElement                       <A-S-O>
"SendEOF
"SendFeedback
"SendFsiRefs
"SendToFavoritesGroup
"Servers.Deploy
"Servers.DeployWithDebug
"Servers.Undeploy
"ServiceView.ActivateDatabaseServiceViewContributor
"ServiceView.ActivateDefaultRemoteServersServiceViewContributor
"ServiceView.ActivateDockerRegistryServiceViewContributor
"ServiceView.ActivateDockerServiceViewContributor
"ServiceView.ActivateRunDashboardServiceViewContributor
"ServiceView.ActivateSshServiceViewContributor
"ServiceView.AddService                             <C-CR>
"ServiceView.Filter
"ServiceView.GroupBy
"ServiceView.GroupByContributor                     <C-T>
"ServiceView.GroupByServiceGroups                   <C-P>
"ServiceView.JumpToServices                         <M-S-;>
"ServiceView.OpenEachInNewTab
"ServiceView.OpenInNewTab
"ServiceView.OpenInNewTabGroup
"ServiceView.ShowServices                           <M-S-T>
"ServiceView.SplitByType
"ServiceViewItemPopup
"ServiceViewItemPopupGroup
"ServiceViewItemToolbar
"ServiceViewItemToolbarGroup
"ServiceViewTreeToolbar
"Session.Close
"Session.CloseAll
"Session.Rename                                     <F2>
"SetDataBreakpoint
"SetJobsForChangeList
"SetShortcutAction
"SettingsEntryPoint
"SettingsEntryPointGroup
"SeverityEditorDialog
"Shelve.KeymapGroup
"ShelveChanges.UnshelveWithDialog
"ShelvedChanges.CleanMarkedToDelete
"ShelvedChanges.ImportPatches
"ShelvedChanges.Rename                              <S-F6>
"ShelvedChanges.Restore
"ShelvedChanges.ShowHideDeleted
"ShelvedChanges.ShowRecentlyDeleted
"ShelvedChangesPopupMenu
"ShelvedChangesToolbar
"ShGenerateForLoop
"ShGenerateGroup
"ShGenerateUntilLoop
"ShGenerateWhileLoop
"Show.Current.Revision
"ShowAfterInstallDialogAction
"ShowAnnotateOperationsPopupGroup
"ShowAppliedStylesAction
"ShowArchitectureDiagramAction
"ShowArchitectureDiagramFromSolutionExplorerAction
"ShowAtRootLevelAction
"ShowBlankDiffWindow
"ShowBookmarks
"ShowColorPicker
"ShowCompilerGeneratedMembersAction
"ShowContent                                        <C-S-Down>
"ShowDebuggerEventsOutputToggleAction
"ShowErrorDescription                               <M-F1>
"ShowExecutionPoint                                 <A-F10>
"ShowExperiments
"ShowFilePath                                       <M-A-F12>
"ShowFilterPopup                                    <A-C-F>
"ShowFontsUsedByEditor
"ShowFromLibrariesAction
"ShowFromTestsAction
"ShowFullyQualifiedTypeNamesSettingAction
"ShowGruntTasks
"ShowGulpTasks
"ShowGutterIconsSettings
"ShowHexValueForIntegersSettingAction
"ShowImplementations.Context
"ShowIntentionActions                               <M-.> <A-CR>
"ShowIntentionsGroup
"ShowJsbtTasks
"ShowLayersDialog
"ShowLiveRunConfigurations
"ShowLog
"ShowModulesAction
"ShowMsBuildConnectionDiagnostic
"ShowNavBar                                         <M-S-;>
"ShowNpmScripts
"ShowParameterHintsSettings
"ShowPopupMenu                                      <S-F10>
"ShowProcessWindow
"ShowRecentFindUsagesGroup
"ShowReformatFileDialog                             <M-A-S-L>
"ShowRegistry
"ShowSearchHistory
"ShowSettings                                       <M-,>
"ShowSettingsAndFindUsages                          <M-A-S-F7>
"ShowSettingsWithAddedPattern
"ShowSidePanelAction
"ShowSolutionConfigurationOnToolbarAction
"ShowSolutionPropertiesAction
"ShowSQLLog
"ShowTips
"ShowTypeBookmarks                                  <M-A-F3>
"ShowTypeVariables
"ShowUmlDiagram                                     <M-A-S-U>
"ShowUmlDiagramPopup                                <M-A-U>
"ShowUnityLogInRiderAction
"ShowUnitySettingsInRider
"ShowUsages                                         <S-F12>
"ShowWholeProjectMicroservicesDiagram
"SilentCodeCleanup
"SliceBackward
"SliceForward
"SmartSelect                                        <M-C-S-Right> <C-S-Right>
"SmartStepInto                                      <S-F7>
"SmartTypeCompletion                                <C-S- >
"SmartUnSelect                                      <C-S-Left>
"SmRunTestGroup
"SolutionExplorerEmptyPopupMenu
"SolutionExplorerPopupMenu
"SolutionExplorerPopupMenu.NuGet
"SolutionExplorerPopupMenu.ProjectManagement
"SolutionExplorerPopupMenu.Repl
"SolutionExplorerPopupMenuForImports
"SolutionExplorerPopupMenuForReference
"SolutionExplorerPopupMenuForReferenceFolder
"SolutionExplorerPopupMenuForSourceGenerators
"SolutionExplorerPopupMenuForWebReference
"SolutionFilterActions
"SolutionViewActiveConfigurationAndPlatform
"SolutionViewContextMenu
"space.actions.MainToolbarActionGroup
"space.review.changes.popup
"space.review.changes.toolbar
"space.review.commits.popup
"Space.Review.CreateDiffComment                     <M-S-X>
"Space.Review.MarkChangesRead
"Space.Review.MarkChangesUnread
"Space.Review.ShowCombinedDiffAction
"SpaceGroup
"SpaceVcsHistoryContextMenu
"SpaceVcsHistoryToolbar
"SpaceVcsLogContextMenu
"SplitHorizontally
"SplitVertically                                    <M-\>
"Spy-js.AddLabel
"Spy-js.CaptureOnlyEvent
"Spy-js.CaptureOnlyFile
"Spy-js.CaptureOnlyStackFile
"Spy-js.CloseDocument
"Spy-js.CloseTraceFiles
"Spy-js.Context.Tree
"Spy-js.Event.Tree
"Spy-js.FileDependencyGraph.LocateEvent
"Spy-js.FileDependencyGraph.SearchFunction
"Spy-js.FileDependencyGraph.Tree
"Spy-js.FindNextFunctionNextCallFromStack
"Spy-js.FindNextFunctionPreviousCallFromStack
"Spy-js.FindPrevFunctionNextCallFromStack
"Spy-js.FindPreviousFunctionPreviousCallFromStack
"Spy-js.FindThisFunctionNextCallFromStack
"Spy-js.FindThisFunctionPreviousCallFromStack
"Spy-js.GoToFirstFoundOccurence
"Spy-js.GoToLastFoundOccurence
"Spy-js.GoToNextFoundOccurence
"Spy-js.GoToPreviousFoundOccurence
"Spy-js.JumpToCaller
"Spy-js.JumpToMappedTrace
"Spy-js.JumpToPackageFile
"Spy-js.JumpToSource
"Spy-js.JumpToTrace
"Spy-js.MuteEvent
"Spy-js.MuteFile
"Spy-js.MuteNodeModuleAction
"Spy-js.MuteNodeModules
"Spy-js.MuteStackFile
"Spy-js.RefreshDocument
"Spy-js.RemoveAndCloseTraceFiles
"Spy-js.RemoveChildren
"Spy-js.RemoveNode
"Spy-js.SearchFunction
"Spy-js.SearchFunctionFromStack
"Spy-js.ShowAppDependencyGraph
"Spy-js.ShowEventDependencyGraph
"Spy-js.Stack.Toolbar
"Spy-js.Stack.Tree
"Spy-js.Stack.Tree.Navigate
"Spy-js.Stack.Tree.Navigate.Next
"Spy-js.Stack.Tree.Navigate.Previous
"Spy-js.Stack.Tree.Navigate.This
"sql.ChangeDialect
"sql.ChangeDialect.toolbar
"Sql.EditParameter                                  <F4>
"sql.ExtractFunctionAction                          <M-A-M>
"sql.ExtractNamedQueryAction
"sql.IntroduceAliasAction
"sql.SelectCurrentStatement
"sql.SelectInDatabaseView                           <A-S-B>
"SqlGenerateGroup
"StandardMacroActions
"start.stop.timer
"Start.Use.Vcs
"StartStopMacroRecording
"StartUnityAction
"StartYourkitProfiler
"StepInto                                           <F11> <F7>
"StepOut                                            <S-F11>
"StepOver                                           <F10>
"Stop                                               <S-F5>
"StopBackgroundProcesses                            <M-S-F2>
"StopOnException
"StopWithDropDown
"StretchSplitToBottom
"StretchSplitToLeft
"StretchSplitToRight
"StretchSplitToTop
"StructuralNavigationBackward
"StructuralNavigationForward
"StructureViewPopupMenu
"Stylelint.Fix
"Subversion.BrowseSVNRepository
"Subversion.CleanupProject
"Subversion.Clenaup
"Subversion.CompareWithBranch
"Subversion.Copy
"Subversion.Create.External
"Subversion.ImportToSVNRepository
"Subversion.Lock
"Subversion.MarkResolved
"Subversion.MarkTreeResolved
"Subversion.Relocate
"Subversion.Resolve
"Subversion.SetProperty
"Subversion.Share
"Subversion.ShareWholeProject
"Subversion.ShowProperties
"Subversion.TogglePropertiesDiff
"Subversion.Unlock
"SubversionFilePopupGroup
"SubversionGroup
"SubversionUpdateActionGroup
"SuppressFixes
"SurroundWith                                       <M-A-T>
"SurroundWithEmmet
"SurroundWithLiveTemplate                           <M-A-J>
"Svn.RefreshWorkingCopies                           <M-R>
"Svn.Show.Working.Copies
"Svn.WorkingCopiesView.Toolbar
"SwapSidesInDiffWindow
"SwapThreeWayColorModeInDiffWindow
"SwGenerateJsonSelfContainedSpecificationAction
"SwGenerateYamlSelfContainedSpecificationAction
"SwitchBackendRuntime
"SwitchCodeToDesigner
"SwitchCoverage                                     <M-A-F6>
"SwitchDesignerToCode
"Switcher                                           <C-Tab> <C-S-Tab>
"SwitcherAndRecentFiles
"SwitcherBackward
"SwitcherForward
"SwitcherIterateItems                               <M-E>
"SwitcherNextProblem                                <A-F8>
"SwitcherPreviousProblem                            <S-F8> <A-S-F8>
"SwitcherRecentEditedChangedToggleCheckBox          <M-E>
"SwitchFileBasedIndexStorageAction
"SwitchHeaderSource                                 <M-C-O>
"SwitchUIModeAction
"SwMarkFileAsSpecificationAction
"Synchronize                                        <M-A-Y>
"SynchronizeCurrentFile
"SyncSettings
"Table-scrollDownChangeSelection                    <Pagedown>
"Table-scrollDownExtendSelection                    <S-Pagedown>
"Table-scrollUpChangeSelection                      <Pageup>
"Table-scrollUpExtendSelection                      <S-Pageup>
"Table-selectFirstRow                               <M-Up>
"Table-selectFirstRowExtendSelection                <M-S-Home>
"Table-selectLastRow                                <M-Down>
"Table-selectLastRowExtendSelection                 <M-S-End>
"Table-selectNextColumn                             <Right> <C-F>
"Table-selectNextColumnExtendSelection              <S-Right>
"Table-selectNextRow                                <Down> <C-N>
"Table-selectNextRowExtendSelection                 <S-Down>
"Table-selectPreviousColumn                         <Left> <C-B>
"Table-selectPreviousColumnExtendSelection          <S-Left>
"Table-selectPreviousRow                            <Up> <C-P>
"Table-selectPreviousRowExtendSelection             <S-Up>
"Table-startEditing                                 <F2>
"TableActions
"TableResult.GrowSelection
"TableResult.SelectAllOccurrences                   <M-F2> <M-C-G> <M-S-L>
"TableResult.SelectNextOccurrence                   <M-D> <M-F3>
"TableResult.ShrinkSelection
"TableResult.UnselectPreviousOccurrence
"TabList
"TabsActions
"task.actions
"tasks.analyze.stacktrace
"tasks.and.contexts
"tasks.close                                        <A-S-W>
"tasks.configure.servers
"tasks.create.changelist
"tasks.edit
"tasks.goto                                         <A-S-N>
"tasks.group
"tasks.open.in.browser                              <A-S-B>
"tasks.show.task.description
"tasks.switch                                       <A-S-T>
"tasks.time.tracking
"tasks.toolbar
"TechnicalSupport
"TemplateParametersNavigation
"TemplateProjectProperties
"TemplateProjectPropertiesAction
"Terminal.ClearBuffer                               <M-L> <M-K>
"Terminal.CopySelectedText                          <M-C> <M-Ins>
"Terminal.MoveToEditor
"Terminal.MoveToolWindowTabLeft
"Terminal.MoveToolWindowTabRight
"Terminal.NextSplitter                              <A-Tab>
"Terminal.OpenInTerminal
"Terminal.Paste                                     <M-V> <S-Ins>
"Terminal.PrevSplitter                              <A-S-Tab>
"Terminal.RenameSession
"Terminal.SelectAll                                 <M-A>
"Terminal.Share
"Terminal.SmartCommandExecution.Debug               <M-S-CR>
"Terminal.SmartCommandExecution.Run                 <M-CR>
"Terminal.SplitHorizontally
"Terminal.SplitVertically                           <M-\> <C-S-5>
"Terminal.StopSharing
"Terminal.SwitchFocusToEditor                       <Esc>
"TerminalDecreaseFontSize                           <M-->
"TerminalIncreaseFontSize                           <M-=>
"TerminalNewPredefinedSession
"TerminalNewSession                                 <C-S-À>
"TerminalResetFontSize
"TerminalShareGroup
"TerminalToolwindowActionGroup
"TestTreePopupMenu
"TextComponent.ClearAction
"TextSearchAction                                   <M-A-S-E>
"TextViewerEditorPopupMenu
"TimeLapseView
"TodoMainGroup
"TodoViewGroupByFlattenPackage                      <C-F>
"TodoViewGroupByGroup
"TodoViewGroupByShowModules                         <C-M>
"TodoViewGroupByShowPackages
"TodoViewGroupByShowProjects
"ToggleBookmark
"ToggleBookmark0                                    <C-S-0>
"ToggleBookmark1                                    <C-S-1>
"ToggleBookmark2                                    <C-S-2>
"ToggleBookmark3                                    <C-S-3>
"ToggleBookmark4                                    <C-S-4>
"ToggleBookmark5
"ToggleBookmark6                                    <C-S-6>
"ToggleBookmark7                                    <C-S-7>
"ToggleBookmark8                                    <C-S-8>
"ToggleBookmark9                                    <C-S-9>
"ToggleBookmarkA
"ToggleBookmarkB
"ToggleBookmarkC
"ToggleBookmarkD
"ToggleBookmarkE
"ToggleBookmarkF
"ToggleBookmarkG
"ToggleBookmarkH
"ToggleBookmarkI
"ToggleBookmarkJ
"ToggleBookmarkK
"ToggleBookmarkL
"ToggleBookmarkM
"ToggleBookmarkN
"ToggleBookmarkO
"ToggleBookmarkP
"ToggleBookmarkQ
"ToggleBookmarkR
"ToggleBookmarkS
"ToggleBookmarkT
"ToggleBookmarkU
"ToggleBookmarkV
"ToggleBookmarkW
"ToggleBookmarkWithMnemonic
"ToggleBookmarkX
"ToggleBookmarkY
"ToggleBookmarkZ
"ToggleBreakpointEnabled
"ToggleChromeTracingAction
"ToggleCompletionHintsAction
"ToggleContentUiTypeMode
"ToggleDistractionFreeMode
"ToggleDockMode
"ToggleFindInSelection                              <A-C-E>
"ToggleFloatingMode
"ToggleFullScreen                                   <M-C-F>
"ToggleFullScreenGroup
"ToggleHexOutput
"ToggleInlayHintsGloballyAction
"ToggleInlineHintsAction
"ToggleLineBreakpoint                               <F9>
"ToggleNodeCoreCodingAssistanceAction
"TogglePinnedMode
"TogglePopupHints
"TogglePowerSave
"TogglePresentationMode
"ToggleReadOnlyAttribute
"ToggleRenderedDocPresentation                      <A-C-Q>
"ToggleRenderedDocPresentationForAll
"ToggleSideMode
"ToggleTemporaryLineBreakpoint                      <M-A-S-F8>
"ToggleThreeSideInBlankDiffWindow
"ToggleWindowedMode
"ToggleZenMode                                      <M-K>
"ToolbarFindGroup
"ToolbarRunGroup
"ToolsBasicGroup
"ToolsMenu
"ToolsXmlGroup
"ToolWindowContextMenu
"ToolWindowsGroup
"TouchBar
"TouchBarDebug
"TouchBarDebug.ForceStepButtons
"TouchBarDebug.StepButtons
"TouchBarDebug_alt
"TouchBarDefault
"TouchBarDefault_alt
"TouchBarDefault_cmd
"TouchBarDefault_cmd.alt
"TouchBarDefault_ctrl
"TouchBarDefault_shift
"TouchBarDefaultOptionalGroup
"TouchBarEditorSearch
"TouchBarEditorSearch_ctrl
"Tree-scrollDownChangeSelection                     <Pagedown>
"Tree-scrollDownExtendSelection                     <S-Pagedown>
"Tree-scrollUpChangeSelection                       <Pageup>
"Tree-scrollUpExtendSelection                       <S-Pageup>
"Tree-selectChild                                   <Right> <C-F>
"Tree-selectChildExtendSelection                    <S-Right>
"Tree-selectFirst                                   <M-Up>
"Tree-selectFirstExtendSelection                    <M-S-Home>
"Tree-selectLast                                    <M-Down>
"Tree-selectLastExtendSelection                     <M-S-End>
"Tree-selectNext                                    <Down> <C-N>
"Tree-selectNextExtendSelection                     <S-Down>
"Tree-selectNextSibling
"Tree-selectParent                                  <Left> <C-B>
"Tree-selectParentExtendSelection                   <S-Left>
"Tree-selectParentNoCollapse
"Tree-selectPrevious                                <Up> <C-P>
"Tree-selectPreviousExtendSelection                 <S-Up>
"Tree-selectPreviousSibling
"Tree-startEditing                                  <F2>
"TreeActions
"TreeNodeExclusion
"TriggerPauseInUnityEditor
"TriggerPlayInUnity
"TriggerRefreshInUnity
"TriggerStepInUnityEditor
"TsLintFileFixAction
"TslintImportCodeStyleAction
"TurnOffF10WinShortcut                              <F10>
"Tutorials.Run
"TW.MoveToGroup
"TW.ViewModeGroup
"TWViewModes
"TWViewModesLegacy
"TypeHierarchy                                      <C-H>
"TypeHierarchy.Class
"TypeHierarchy.Subtypes
"TypeHierarchy.Supertypes
"TypeHierarchyBase.BaseOnThisType                   <C-H>
"TypeHierarchyPopupMenu
"TypeScript.Enable.Service
"TypeScript.Include.Sources
"TypeScript.Restart.Service
"TypeScriptExtractTypeAlias
"UiDebugger
"UIToggleActions
"Uml.CollapseNodes                                  <C>
"UML.DefaultGraphPopup
"UML.EditorGroup
"Uml.ExpandNodes                                    <E>
"UML.Find                                           <M-F>
"UML.Group
"UML.Group.Simple
"Uml.NewElement                                     <C-CR>
"Uml.NewGroup
"Uml.NodeCellEditorPopup
"Uml.NodeCellEditorPopup.GoTo
"Uml.NodeCellEditorPopup.QuickActions
"Uml.NodeIntentions
"Uml.PsiElement.Actions
"Uml.Refactoring
"UML.RiderDefaultGraphPopup
"UML.SaveDiagram
"UML.ShowChanges                                    <M-A-S-D>
"Uml.ShowDiff
"UML.ShowStructure
"UML.SourceActionsGroup
"Uml.SourceActionsGroup.GoTo
"Uml.SourceActionsGroup.QuickActions
"UnattendedHostDropdownGroup
"UnattendedHostImportantActionsGroup
"UndockMode
"UnityDllShowImportantAction
"UnityProtocolStatusAction
"UnityShowImportantAction
"UnityTestLauncher
"UnityToolbarActions
"UnityToolbarLabel
"UnrealInteractionToolbar
"UnrealLink.CancelRiderLinkInstallAction
"UnrealLink.CopyEditorPluginToEngineAction
"UnrealLink.CopyEditorPluginToGameAction
"UnrealLink.EnableAutoUpdatePlugin
"UnrealLink.InstallEditorPluginToEngineAction
"UnrealLink.InstallEditorPluginToGameAction
"Unscramble
"UnselectPreviousOccurrence                         <M-U>
"Unsplit
"UnsplitAll
"Unversioned.Files.Dialog
"Unversioned.Files.Dialog.Popup
"Unwrap                                             <M-S-Del>
"UnwrapTagAction
"UpdateActionGroup
"UpdateFiles
"UpdateRunningApplication                           <M-F10>
"UpdateWebReferenceAction
"UsageFiltering.GeneratedCode
"UsageFiltering.Imports                             <C-I>
"UsageFiltering.ReadAccess                          <C-R>
"UsageFiltering.WriteAccess                         <C-W>
"UsageFilteringActionGroup
"UsageGrouping.Directory                            <C-P>
"UsageGrouping.DirectoryStructure                   <C-D>
"UsageGrouping.FileStructure                        <C-S>
"UsageGrouping.FlattenModules                       <C-O>
"UsageGrouping.Module                               <C-M>
"UsageGrouping.Scope
"UsageGrouping.UsageType                            <C-T>
"UsageGroupingActionGroup
"UsageView.Exclude                                  <Del> <BS>
"UsageView.Include                                  <S-BS>
"UsageView.Popup
"UsageView.Remove                                   <M-X> <S-Del>
"UsageView.Rerun                                    <M-;> <M-S-F5>
"UsageView.ShowRecentFindUsages
"v8.profiling
"VagrantGroup
"ValidateXml
"ValueSettingsActionsGroup
"Vcs.ApplySelectedChanges
"Vcs.Browse
"Vcs.CheckinProjectMenu
"Vcs.CheckinProjectToolbar
"Vcs.CherryPick
"Vcs.Commit.PrimaryCommitActions
"Vcs.CommitExecutor.Actions
"Vcs.CopyCommitSubjectAction
"Vcs.CopyRevisionNumberAction                       <M-A-S-C>
"Vcs.Diff.ExcludeChangedLinesFromCommit
"Vcs.Diff.IncludeOnlyChangedLinesIntoCommit
"Vcs.Diff.ShowDiffInEditorTab
"Vcs.Diff.ShowDiffInNewWindow
"Vcs.Diff.ToggleDiffAligningMode
"Vcs.EditSource                                     <F4>
"Vcs.FileHistory.ContextMenu
"Vcs.FileHistory.PresentationSettings
"Vcs.FileHistory.Toolbar
"Vcs.GetVersion
"Vcs.History
"Vcs.Import
"Vcs.IntegrateProject
"Vcs.KeymapGroup
"Vcs.Log.AlignLabels
"Vcs.Log.AnnotateRevisionAction
"Vcs.Log.ChangesBrowser.Popup
"Vcs.Log.ChangesBrowser.PresentationSettings
"Vcs.Log.ChangesBrowser.Toolbar
"Vcs.Log.CollapseAll
"Vcs.Log.CompactReferencesView
"Vcs.Log.CompareRevisions
"Vcs.Log.ContextMenu
"Vcs.Log.Diff.Preview.Location
"Vcs.Log.EnableFilterByRegexAction
"Vcs.Log.ExpandAll
"Vcs.Log.FocusTextFilter                            <M-L>
"Vcs.Log.GetVersion
"Vcs.Log.GoToChild                                  <Left>
"Vcs.Log.GoToParent                                 <Right>
"Vcs.Log.GoToRef                                    <M-F>
"Vcs.Log.HighlightersActionGroup
"Vcs.Log.IntelliSortChooser
"Vcs.Log.LayoutConfiguration
"Vcs.Log.MatchCaseAction
"Vcs.Log.MoveDiffPreviewToBottom
"Vcs.Log.MoveDiffPreviewToRight
"Vcs.Log.OpenAnotherTab
"Vcs.Log.OpenRepositoryVersion
"Vcs.Log.PreferCommitDate
"Vcs.Log.PresentationSettings
"Vcs.Log.Refresh                                    <M-R>
"Vcs.Log.ResumeIndexing
"Vcs.Log.ShowAllAffected                            <M-C-A>
"Vcs.Log.ShowChangesFromParents
"Vcs.Log.ShowDetailsAction
"Vcs.Log.ShowDiffPreview
"Vcs.Log.ShowLongEdges
"Vcs.Log.ShowOnlyAffectedChanges
"Vcs.Log.ShowOtherBranches
"Vcs.Log.ShowRootsColumnAction
"Vcs.Log.ShowTagNames
"Vcs.Log.ShowTooltip                                button=2 clickCount=1 modifiers=128 <M-K>
"Vcs.Log.TextFilterSettings
"Vcs.Log.ToggleColumns
"Vcs.Log.Toolbar
"Vcs.Log.Toolbar.Internal
"Vcs.Log.Toolbar.RightCorner
"Vcs.MainMenu
"Vcs.MessageActionGroup
"Vcs.MoveChangedLinesToChangelist
"Vcs.OpenRepositoryVersion
"Vcs.Operations.Popup
"Vcs.Operations.Popup.Annotate
"Vcs.Operations.Popup.NonVcsAware
"Vcs.Operations.Popup.Vcs.Providers
"Vcs.Operations.Popup.VcsAware
"Vcs.Operations.Popup.VcsNameSeparator
"Vcs.Push
"Vcs.Push.Actions
"Vcs.Push.Force
"Vcs.Push.Simple
"Vcs.QuickListPopupAction                           <C-V>
"Vcs.ReformatCommitMessage                          <A-S-F>
"Vcs.RefreshFileHistory                             <M-R>
"Vcs.RepositoryChangesBrowserMenu
"Vcs.RepositoryChangesBrowserToolbar
"Vcs.RevertSelectedChanges
"Vcs.RollbackChangedLines                           <M-A-Z>
"Vcs.RunCommitChecks
"Vcs.SavedPatches.ChangesBrowser.ContextMenu
"Vcs.SavedPatches.ContextMenu
"Vcs.Shelf.Apply
"Vcs.Shelf.ChangesBrowser.ContextMenu
"Vcs.Shelf.Drop                                     <Del> <BS>
"Vcs.Shelf.Operations.ContextMenu
"Vcs.Shelf.Pop
"Vcs.Shelf.UnshelveChanges
"Vcs.Shelf.UnshelveChangesAndRemove
"Vcs.Show.Local.Changes
"Vcs.Show.Log
"Vcs.Show.Shelf
"Vcs.Show.Toolwindow.Tab
"Vcs.ShowDiffWithLocal
"Vcs.ShowDiffWithLocal.Before
"Vcs.ShowHistoryForBlock
"Vcs.ShowHistoryForRevision
"Vcs.ShowMessageHistory                             <C-M>
"Vcs.ShowTabbedFileHistory
"Vcs.Specific
"Vcs.ToggleAmendCommitMode                          <A-C-M>
"Vcs.Toolbar.ShowMoreActions
"Vcs.ToolbarWidget.CreateRepository
"Vcs.ToolbarWidget.ShareProject
"Vcs.ToolWindow.CreateRepository
"Vcs.UmlDiff
"Vcs.UpdateProject
"Vcs.VcsClone
"VcsFileGroupPopup
"VcsGeneral.KeymapGroup
"VcsGlobalGroup
"VcsGroup
"VcsGroups
"VcsHistory.ShowAllAffected                         <M-C-A>
"VcsHistoryActionsGroup
"VcsHistoryActionsGroup.Toolbar
"VcsHistoryInternalGroup.Popup
"VcsHistoryInternalGroup.Toolbar
"VcsNavBarToolbarActions
"VcsSelectionHistoryDialog.Popup
"VcsShowCurrentChangeMarker
"VcsShowNextChangeMarker                            <A-F3> <A-F5>
"VcsShowPrevChangeMarker                            <A-S-F3> <A-S-F5>
"VcsToolbarActions
"VcsToolbarLabelAction
"VcsTouchBarGroup
"VersionControlsGroup
"ViewAppearanceGroup
"ViewArchivesAction
"ViewBreakpoints                                    <M-S-F8>
"ViewImportPopups
"ViewInAssemblyExplorer
"ViewInplaceComments
"ViewInSolutionExplorer
"ViewMainMenu
"ViewMembersInNavigationBar
"ViewMenu
"ViewNavigationBar
"ViewNewToolbarAction
"ViewObsoleteNavBarAction
"ViewObsoleteToolbarAction
"ViewOfflineInspection
"ViewRecentActions
"ViewSource
"ViewStatusBar
"ViewStatusBarWidgetsGroup
"ViewToolBar
"ViewToolbarActionsGroup
"ViewToolButtons
"VimActions
"VimFindActionIdAction
"VimPluginToggle
"VimShortcutKeyAction
"VisualizeSourceMap
"VueExtractComponentAction
"WD.RefreshCurrentRemoteFileAction
"WD.UploadCurrentRemoteFileAction                   <A-S-Q>
"WebDeployment.BrowseServers
"WebDeployment.Configuration
"WebDeployment.Options
"WebDeployment.ToggleAutoUpload
"WebOpenInAction                                    <A-F2>
"WeighingNewGroup
"WelcomeScreen.ChangeProjectIcon
"WelcomeScreen.Configure
"WelcomeScreen.Configure.Export
"WelcomeScreen.Configure.Import
"WelcomeScreen.Configure.RestoreDefault
"WelcomeScreen.CopyProjectPath                      <M-A-C> <M-K>
"WelcomeScreen.Documentation
"WelcomeScreen.EditGroup
"WelcomeScreen.LearnIdeHelp
"WelcomeScreen.ManageLicense
"WelcomeScreen.MoveToGroup
"WelcomeScreen.NewGroup
"WelcomeScreen.OpenDirectoryProject
"WelcomeScreen.OpenSelected
"WelcomeScreen.Options
"WelcomeScreen.Plugins                              <M-S-X>
"WelcomeScreen.QuickStart
"WelcomeScreen.QuickStart.EmptyState
"WelcomeScreen.QuickStart.Platform
"WelcomeScreen.QuickStart.ProjectsState
"WelcomeScreen.RemoveSelected                       <Del> <BS>
"WelcomeScreen.RevealIn
"WelcomeScreen.Settings
"WelcomeScreenRecentProjectActionGroup
"WhatsNewAction
"WindowMenu
"WindowMode
"WinFormsActions
"working.context
"WpfZoomActions
"WrapTagAction
"WrapTagContentsAction
"Xamarin.AddXcAssetAppIconItem
"Xamarin.AddXcAssetColorItem
"Xamarin.AddXcAssetImageItem
"XamarinAddXcAssetsGroup
"XamarinArchiveGroup
"XamarinIOSSessionConnection
"XamarinXcAssetItemPopupMenu
"XamarinXcAssetsPopupMenu
"xaml.splitEditor.editorActions.ChangeEditorOrientationAction
"xaml.splitEditor.editorActions.EditorAndPreviewAction
"xaml.splitEditor.editorActions.EditorOnlyAction
"xaml.splitEditor.editorActions.PreviewOnlyAction
"xaml.splitEditor.editorActions.SwapPreviewAndTextEditor
"XDebugger.Actions
"XDebugger.AttachGroup
"XDebugger.AttachToProcess                          <A-S-F5>
"XDebugger.CompareValueWithClipboard
"XDebugger.CopyName
"XDebugger.CopyValue                                <M-C>
"XDebugger.CopyWatch                                <A-S-Down>
"XDebugger.EditWatch
"XDebugger.Evaluate.Code.Fragment.Editor.Popup
"XDebugger.Evaluation.Dialog.Tree.Popup
"XDebugger.Frames.TopToolbar
"XDebugger.Frames.Tree.Popup
"XDebugger.Inline
"XDebugger.Inspect
"XDebugger.Inspect.Tree.Popup
"XDebugger.JumpToSource                             <F4>
"XDebugger.JumpToTypeSource                         <S-F4>
"XDebugger.MoveWatchDown                            <A-Down>
"XDebugger.MoveWatchUp                              <A-Up>
"XDebugger.MuteBreakpoints
"XDebugger.NewWatch
"XDebugger.PinToTop
"XDebugger.PreviewTab
"XDebugger.RemoveAllWatches
"XDebugger.RemoveWatch                              <Del> <BS>
"XDebugger.Settings
"XDebugger.SetValue
"XDebugger.SwitchWatchesInVariables
"XDebugger.Threads.Tree.Popup
"XDebugger.ToggleEvaluateExpressionField
"XDebugger.ToggleSortValues
"XDebugger.ToolWindow.LeftToolbar
"XDebugger.ToolWindow.TopToolbar
"XDebugger.ToolWindow.TopToolbar3
"XDebugger.ToolWindow.TopToolbar3.Extra
"XDebugger.UnmuteOnStop
"XDebugger.ValueGroup
"XDebugger.ValueGroup.CopyJson
"XDebugger.Variables.Tree.Popup
"XDebugger.Variables.Tree.Toolbar
"XDebugger.Watches.Inline.Popup
"XDebugger.Watches.Tree.Popup
"XDebugger.Watches.Tree.Toolbar
"XdtTransformActions
"XdtTransformActionsGroup
"XmlGenerateToolsGroup
"XMLRefactoringMenu
"XPathView.Actions.Evaluate                         <M-A-X>
"XPathView.Actions.FindByExpression                 <M-A-X>
"XPathView.Actions.ShowPath                         <M-A-X>
"XPathView.EditorPopup
"XPathView.MainMenu.Search
"XPathView.XSLT.Associations
"XSD2Document
"ZoomCurrentWindow                                  <M-C-=>
