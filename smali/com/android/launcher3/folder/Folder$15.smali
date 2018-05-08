.class Lcom/android/launcher3/folder/Folder$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .line 1304
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$15;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 0

    .line 1308
    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$15;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    const/4 p1, 0x0

    return p1
.end method
