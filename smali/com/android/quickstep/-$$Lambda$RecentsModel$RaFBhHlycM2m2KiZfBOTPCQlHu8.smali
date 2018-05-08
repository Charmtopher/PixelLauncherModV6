.class public final synthetic Lcom/android/quickstep/-$$Lambda$RecentsModel$RaFBhHlycM2m2KiZfBOTPCQlHu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/RecentsModel;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsModel;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$RaFBhHlycM2m2KiZfBOTPCQlHu8;->f$0:Lcom/android/quickstep/RecentsModel;

    iput p2, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$RaFBhHlycM2m2KiZfBOTPCQlHu8;->f$1:I

    iput-object p3, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$RaFBhHlycM2m2KiZfBOTPCQlHu8;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$RaFBhHlycM2m2KiZfBOTPCQlHu8;->f$0:Lcom/android/quickstep/RecentsModel;

    iget v1, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$RaFBhHlycM2m2KiZfBOTPCQlHu8;->f$1:I

    iget-object v2, p0, Lcom/android/quickstep/-$$Lambda$RecentsModel$RaFBhHlycM2m2KiZfBOTPCQlHu8;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/RecentsModel;->lambda$preloadAssistData$4(Lcom/android/quickstep/RecentsModel;ILandroid/os/Bundle;)V

    return-void
.end method
