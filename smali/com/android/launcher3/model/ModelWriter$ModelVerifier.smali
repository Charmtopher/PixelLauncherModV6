.class public Lcom/android/launcher3/model/ModelWriter$ModelVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final startId:I

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iget-object p1, p1, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget p1, p1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    iput p1, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->startId:I

    .line 401
    return-void
.end method

.method public static synthetic lambda$verifyModel$0(Lcom/android/launcher3/model/ModelWriter$ModelVerifier;I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, v0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v0, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    .line 412
    if-le v0, p1, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->startId:I

    if-ne p1, v0, :cond_1

    .line 418
    return-void

    .line 421
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object p1, p1, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object p1

    .line 422
    if-eqz p1, :cond_2

    .line 423
    invoke-interface {p1}, Lcom/android/launcher3/LauncherModel$Callbacks;->rebindModel()V

    .line 425
    :cond_2
    return-void
.end method


# virtual methods
.method final verifyModel()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-boolean v0, v0, Lcom/android/launcher3/model/ModelWriter;->mVerifyChanges:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, v0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, v0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v0, v0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    .line 410
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, v1, Lcom/android/launcher3/model/ModelWriter;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ModelVerifier$4mPDQaepj-58Crw1v-HLJXgf78A;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ModelVerifier$4mPDQaepj-58Crw1v-HLJXgf78A;-><init>(Lcom/android/launcher3/model/ModelWriter$ModelVerifier;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void

    .line 405
    :cond_1
    :goto_0
    return-void
.end method
