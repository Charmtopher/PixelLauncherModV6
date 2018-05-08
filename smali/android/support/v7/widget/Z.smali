.class public Landroid/support/v7/widget/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5289
    return-void
.end method


# virtual methods
.method public createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 0

    .line 5318
    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object p2
.end method
