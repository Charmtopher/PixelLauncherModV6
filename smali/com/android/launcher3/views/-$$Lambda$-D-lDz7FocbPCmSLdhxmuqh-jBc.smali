.class public final synthetic Lcom/android/launcher3/views/-$$Lambda$-D-lDz7FocbPCmSLdhxmuqh-jBc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/launcher3/views/-$$Lambda$-D-lDz7FocbPCmSLdhxmuqh-jBc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/views/-$$Lambda$-D-lDz7FocbPCmSLdhxmuqh-jBc;

    invoke-direct {v0}, Lcom/android/launcher3/views/-$$Lambda$-D-lDz7FocbPCmSLdhxmuqh-jBc;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/-$$Lambda$-D-lDz7FocbPCmSLdhxmuqh-jBc;->INSTANCE:Lcom/android/launcher3/views/-$$Lambda$-D-lDz7FocbPCmSLdhxmuqh-jBc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/views/OptionsPopupView;->startSettings(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
