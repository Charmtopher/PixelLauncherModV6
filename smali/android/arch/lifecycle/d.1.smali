.class public Landroid/arch/lifecycle/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/i;


# instance fields
.field private final G:[Landroid/arch/lifecycle/h;


# direct methods
.method constructor <init>([Landroid/arch/lifecycle/h;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/arch/lifecycle/d;->G:[Landroid/arch/lifecycle/h;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 36
    new-instance p1, Landroid/arch/lifecycle/t;

    invoke-direct {p1}, Landroid/arch/lifecycle/t;-><init>()V

    .line 37
    return-void
.end method
