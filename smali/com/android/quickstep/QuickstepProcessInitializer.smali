.class public Lcom/android/quickstep/QuickstepProcessInitializer;
.super Lcom/android/launcher3/MainProcessInitializer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/launcher3/MainProcessInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/android/launcher3/MainProcessInitializer;->init(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    const v0, 0x0

    if-eqz v0, :skip_init

    .line 32
    sget p1, Lcom/android/systemui/shared/system/ThreadedRendererCompat;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/ThreadedRendererCompat;->setContextPriority(I)V

    :skip_init

    .line 33
    return-void
.end method
