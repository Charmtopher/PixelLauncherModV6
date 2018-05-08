.class public final synthetic Lcom/android/quickstep/views/-$$Lambda$RecentsView$7BIl_GkisndzMV7XPlHgrVMc6Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/util/PendingAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/PendingAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$7BIl_GkisndzMV7XPlHgrVMc6Oo;->f$0:Lcom/android/launcher3/util/PendingAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/-$$Lambda$RecentsView$7BIl_GkisndzMV7XPlHgrVMc6Oo;->f$0:Lcom/android/launcher3/util/PendingAnimation;

    invoke-static {v0}, Lcom/android/quickstep/views/RecentsView;->lambda$dismissTask$5(Lcom/android/launcher3/util/PendingAnimation;)V

    return-void
.end method
