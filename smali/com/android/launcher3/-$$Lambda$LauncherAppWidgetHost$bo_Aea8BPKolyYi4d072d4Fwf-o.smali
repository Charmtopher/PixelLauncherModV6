.class public final synthetic Lcom/android/launcher3/-$$Lambda$LauncherAppWidgetHost$bo_Aea8BPKolyYi4d072d4Fwf-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/BaseActivity;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/BaseActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/-$$Lambda$LauncherAppWidgetHost$bo_Aea8BPKolyYi4d072d4Fwf-o;->f$0:Lcom/android/launcher3/BaseActivity;

    iput p2, p0, Lcom/android/launcher3/-$$Lambda$LauncherAppWidgetHost$bo_Aea8BPKolyYi4d072d4Fwf-o;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/-$$Lambda$LauncherAppWidgetHost$bo_Aea8BPKolyYi4d072d4Fwf-o;->f$0:Lcom/android/launcher3/BaseActivity;

    iget v1, p0, Lcom/android/launcher3/-$$Lambda$LauncherAppWidgetHost$bo_Aea8BPKolyYi4d072d4Fwf-o;->f$1:I

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->lambda$sendActionCancelled$0(Lcom/android/launcher3/BaseActivity;I)V

    return-void
.end method
