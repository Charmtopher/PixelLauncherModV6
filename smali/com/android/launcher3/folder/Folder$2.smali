.class Lcom/android/launcher3/folder/Folder$2;
.super Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$2;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method protected final enableAccessibleDrag(Z)V
    .locals 1

    .line 276
    invoke-super {p0, p1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$2;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->access$000(Lcom/android/launcher3/folder/Folder;)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 278
    const/4 p1, 0x4

    goto :goto_0

    .line 279
    :cond_0
    const/4 p1, 0x0

    .line 277
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 280
    return-void
.end method
