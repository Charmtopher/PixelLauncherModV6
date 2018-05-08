.class public interface abstract Lcom/android/launcher3/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
.end method

.method public abstract bindAllWidgets(Ljava/util/ArrayList;)V
.end method

.method public abstract bindAppInfosRemoved(Ljava/util/ArrayList;)V
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end method

.method public abstract bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V
.end method

.method public abstract bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
.end method

.method public abstract bindItems(Ljava/util/List;Z)V
.end method

.method public abstract bindPromiseAppProgressUpdated(Lcom/android/launcher3/PromiseAppInfo;)V
.end method

.method public abstract bindRestoreItemsChange(Ljava/util/HashSet;)V
.end method

.method public abstract bindScreens(Ljava/util/ArrayList;)V
.end method

.method public abstract bindShortcutsChanged$113655ee(Ljava/util/ArrayList;)V
.end method

.method public abstract bindWidgetsRestored(Ljava/util/ArrayList;)V
.end method

.method public abstract bindWorkspaceComponentsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V
.end method

.method public abstract clearPendingBinds()V
.end method

.method public abstract executeOnNextDraw(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
.end method

.method public abstract finishBindingItems()V
.end method

.method public abstract finishFirstPageBind(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract onPageBoundSynchronously(I)V
.end method

.method public abstract rebindModel()V
.end method

.method public abstract startBinding()V
.end method
