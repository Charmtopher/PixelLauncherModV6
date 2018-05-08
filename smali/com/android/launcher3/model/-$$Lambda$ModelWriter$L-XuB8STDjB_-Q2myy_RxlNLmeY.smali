.class public final synthetic Lcom/android/launcher3/model/-$$Lambda$ModelWriter$L-XuB8STDjB_-Q2myy_RxlNLmeY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/model/ModelWriter;

.field private final synthetic f$1:Lcom/android/launcher3/FolderInfo;

.field private final synthetic f$2:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$L-XuB8STDjB_-Q2myy_RxlNLmeY;->f$0:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$L-XuB8STDjB_-Q2myy_RxlNLmeY;->f$1:Lcom/android/launcher3/FolderInfo;

    iput-object p3, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$L-XuB8STDjB_-Q2myy_RxlNLmeY;->f$2:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$L-XuB8STDjB_-Q2myy_RxlNLmeY;->f$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$L-XuB8STDjB_-Q2myy_RxlNLmeY;->f$1:Lcom/android/launcher3/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$L-XuB8STDjB_-Q2myy_RxlNLmeY;->f$2:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/model/ModelWriter;->lambda$deleteFolderAndContentsFromDatabase$2(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method
