.class Lcom/android/launcher3/folder/Folder$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$item:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/ShortcutInfo;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$14;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$14;->val$item:Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 0

    .line 1283
    iget-object p2, p0, Lcom/android/launcher3/folder/Folder$14;->val$item:Lcom/android/launcher3/ShortcutInfo;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
