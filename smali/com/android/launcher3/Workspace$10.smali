.class Lcom/android/launcher3/Workspace$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0

    .line 2931
    iput-object p1, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 0

    .line 2934
    instance-of p1, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p1, :cond_0

    .line 2935
    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 2937
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
