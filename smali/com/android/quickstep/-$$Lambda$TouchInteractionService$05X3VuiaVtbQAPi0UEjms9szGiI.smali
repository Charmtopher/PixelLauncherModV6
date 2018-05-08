.class public final synthetic Lcom/android/quickstep/-$$Lambda$TouchInteractionService$05X3VuiaVtbQAPi0UEjms9szGiI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/quickstep/DeferredTouchConsumer$DeferredTouchProvider;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/TouchInteractionService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/android/quickstep/TouchConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService;ILcom/android/quickstep/TouchConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$05X3VuiaVtbQAPi0UEjms9szGiI;->f$0:Lcom/android/quickstep/TouchInteractionService;

    iput p2, p0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$05X3VuiaVtbQAPi0UEjms9szGiI;->f$1:I

    iput-object p3, p0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$05X3VuiaVtbQAPi0UEjms9szGiI;->f$2:Lcom/android/quickstep/TouchConsumer;

    return-void
.end method


# virtual methods
.method public final createTouchConsumer(Landroid/view/VelocityTracker;)Lcom/android/quickstep/TouchConsumer;
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$05X3VuiaVtbQAPi0UEjms9szGiI;->f$0:Lcom/android/quickstep/TouchInteractionService;

    iget v1, p0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$05X3VuiaVtbQAPi0UEjms9szGiI;->f$1:I

    iget-object v2, p0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$05X3VuiaVtbQAPi0UEjms9szGiI;->f$2:Lcom/android/quickstep/TouchConsumer;

    invoke-static {v0, v1, v2, p1}, Lcom/android/quickstep/TouchInteractionService;->lambda$setupTouchConsumer$1(Lcom/android/quickstep/TouchInteractionService;ILcom/android/quickstep/TouchConsumer;Landroid/view/VelocityTracker;)Lcom/android/quickstep/TouchConsumer;

    move-result-object p1

    return-object p1
.end method
