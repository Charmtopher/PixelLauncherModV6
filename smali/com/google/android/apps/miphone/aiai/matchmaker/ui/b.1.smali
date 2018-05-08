.class public Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;


# static fields
.field private static final ut:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;


# instance fields
.field final uu:Landroid/graphics/PointF;

.field private final uv:Landroid/view/ViewGroup;

.field uw:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;-><init>(Landroid/view/ViewGroup;)V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->ut:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uu:Landroid/graphics/PointF;

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uw:J

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uv:Landroid/view/ViewGroup;

    .line 24
    return-void
.end method

.method public static cl()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->ut:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uv:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uv:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;->uv:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cy()V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->setLongClickable(Z)V

    .line 39
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/c;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/c;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/d;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/b;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    return-void
.end method
