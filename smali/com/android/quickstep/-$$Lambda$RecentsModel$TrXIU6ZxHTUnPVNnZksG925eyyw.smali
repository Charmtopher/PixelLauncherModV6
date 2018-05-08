.class public final synthetic Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/RecentsModel;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsModel;IILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;->f$0:Lcom/android/quickstep/RecentsModel;

    iput p2, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;->f$1:I

    iput p3, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;->f$2:I

    iput-object p4, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;->f$0:Lcom/android/quickstep/RecentsModel;

    iget v1, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;->f$1:I

    iget v2, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;->f$2:I

    iget-object v3, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$TrXIU6ZxHTUnPVNnZksG925eyyw;->f$3:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, v3}, Lcom/android/quickstep/RecentsModel;->lambda$loadTasks$3(Lcom/android/quickstep/RecentsModel;IILjava/util/function/Consumer;)V

    return-void
.end method
