.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final wE:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ac;->wE:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "-- Finished selection."

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
