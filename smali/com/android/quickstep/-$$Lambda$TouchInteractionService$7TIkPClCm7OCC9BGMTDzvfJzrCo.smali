.class public final synthetic Lcom/android/quickstep/-$$Lambda$TouchInteractionService$7TIkPClCm7OCC9BGMTDzvfJzrCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/quickstep/TouchConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/quickstep/-$$Lambda$TouchInteractionService$7TIkPClCm7OCC9BGMTDzvfJzrCo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$7TIkPClCm7OCC9BGMTDzvfJzrCo;

    invoke-direct {v0}, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$7TIkPClCm7OCC9BGMTDzvfJzrCo;-><init>()V

    sput-object v0, Lcom/android/quickstep/-$$Lambda$TouchInteractionService$7TIkPClCm7OCC9BGMTDzvfJzrCo;->INSTANCE:Lcom/android/quickstep/-$$Lambda$TouchInteractionService$7TIkPClCm7OCC9BGMTDzvfJzrCo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->lambda$new$0(Landroid/view/MotionEvent;)V

    return-void
.end method
