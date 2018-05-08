.class public final synthetic Lcom/android/quickstep/-$$Lambda$RecentsModel$rpZwGbzmm_8iDmpR9nLZpbXBWE4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$rpZwGbzmm_8iDmpR9nLZpbXBWE4;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$rpZwGbzmm_8iDmpR9nLZpbXBWE4;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/quickstep/RecentsModel;->lambda$getInstance$0(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object v0

    return-object v0
.end method
