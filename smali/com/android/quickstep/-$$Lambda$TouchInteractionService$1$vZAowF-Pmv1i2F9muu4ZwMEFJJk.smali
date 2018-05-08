.class public final synthetic Lcom/android/quickstep/-$$Lambda$TouchInteractionService$1$vZAowF-Pmv1i2F9muu4ZwMEFJJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/quickstep/RemoteRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/TouchInteractionService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$1$vZAowF-Pmv1i2F9muu4ZwMEFJJk;->f$0:Lcom/android/quickstep/TouchInteractionService$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$1$vZAowF-Pmv1i2F9muu4ZwMEFJJk;->f$0:Lcom/android/quickstep/TouchInteractionService$1;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService$1;->lambda$onBind$0(Lcom/android/quickstep/TouchInteractionService$1;)V

    return-void
.end method
