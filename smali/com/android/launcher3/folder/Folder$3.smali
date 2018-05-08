.class Lcom/android/launcher3/folder/Folder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$3;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$3;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$3;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/Folder;->access$102(Lcom/android/launcher3/folder/Folder;Z)Z

    .line 328
    return-void
.end method
