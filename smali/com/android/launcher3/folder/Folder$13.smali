.class Lcom/android/launcher3/folder/Folder$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$lastChild:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/view/View;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$13;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$13;->val$lastChild:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1128
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x3d

    if-ne p2, v1, :cond_0

    .line 1129
    invoke-virtual {p3, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1130
    :cond_0
    move v0, p1

    :goto_0
    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/folder/Folder$13;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/Folder;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1131
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$13;->val$lastChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    .line 1133
    :cond_1
    return p1
.end method
