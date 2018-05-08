.class public Lcom/android/launcher3/Workspace$6;
.super Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 1543
    iput-object p1, p0, Lcom/android/launcher3/Workspace$6;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method protected final enableAccessibleDrag(Z)V
    .locals 1

    .line 1546
    invoke-super {p0, p1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    .line 1547
    iget-object v0, p0, Lcom/android/launcher3/Workspace$6;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v0, v0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Workspace$6;->setEnableForLayout(Lcom/android/launcher3/CellLayout;Z)V

    .line 1548
    return-void
.end method
